require 'olive_branch'

module Ant
  module Design
    module Rails
      class Railtie < ::Rails::Railtie
        initializer "ant_design_rails.configure_rails_initialization" do
          ::Rails.application.middleware.use UmiDevProxy if ::Rails.env.development?
          ::Rails.application.middleware.use OliveBranch::Middleware,
                                inflection: 'camel',
                                exclude_params: ->(env) { !env['PATH_INFO'].match(%r{^/api}) },
                                exclude_response: ->(env) { !env['PATH_INFO'].match(%r{^/api}) }
        end
      end
    end
  end
end
