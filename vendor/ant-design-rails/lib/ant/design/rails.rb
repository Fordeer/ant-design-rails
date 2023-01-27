# frozen_string_literal: true

require_relative "rails/version"
require_relative "rails/routes"
require_relative "rails/railties"

# Todo: placeholder methods for project generation based on the template of https://github.com/pmq20/ant-design-rails
module Ant
  module Design
    module Rails
      class Error < StandardError; end

      def self.hi(language)
        puts "Todo: Hi #{language}"
      end
    end
  end
end
