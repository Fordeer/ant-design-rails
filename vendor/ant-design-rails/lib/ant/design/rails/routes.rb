# frozen_string_literal: true

require 'forwardable'
require 'execjs'

module Ant
  module Design
    module Rails
      class Routes
        include Enumerable
        extend Forwardable
        def_delegators :@result_array, :each, :<<

        def initialize(routes_ts_path)
          @body = File.read(routes_ts_path)
          @result_array = ExecJS.eval(@body[start_of_json..end_of_json])
        end

        def start_of_json
          @body.index('[')
        end

        def end_of_json
          @body.rindex(']')
        end
      end
    end
  end
end

module ActionDispatch::Routing
  class Mapper
    def antd_pages(routes_ts_path)
      antd_routes_reader = Ant::Design::Rails::Routes.new(routes_ts_path)
      antd_api = {}
      antd_routes_reader.each do |antd_route|
        next if antd_route["path"] == "*"
        antd_route_parse(antd_api, antd_route)
      end
      scope :api do
        antd_api.each_value.map(&:call)
      end
    end

    def antd_route_parse(antd_api, antd_route)
      if antd_route["path"] == "/" && antd_route["redirect"].present?
        root to: redirect(antd_route["redirect"])
      elsif (antd_route["path"][0..4]) == "/api/" && (antd_route["path"][5..-1]).present?
        antd_route_without_api = antd_route["path"][5..-1]
        antd_api[antd_route_without_api] = antd_lambda(antd_route_without_api, antd_route)
      end
      # Recurse
      antd_route['routes']&.each do |sub_antd_route|
        antd_route_parse(antd_api, sub_antd_route)
      end
    end

    def antd_lambda(antd_route_without_api, antd_route)
      antd_route_parts = antd_route_without_api.split("/")
      if antd_route["redirect"].present?
        lambda { get antd_route_without_api, to: redirect(antd_route["redirect"]) }
      elsif antd_route_parts.length == 1
        lambda { get antd_route_without_api => "#{antd_route_parts.first.underscore}#index" }
      else
        lambda { get antd_route_without_api => "#{antd_route_parts.first.underscore}##{antd_route_parts[1..-1].join("_").underscore}" }
      end
    end
  end
end
