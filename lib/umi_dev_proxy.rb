# frozen_string_literal: true

require 'json'

class UmiDevProxy
  def initialize(app)
    @app = app
  end

  def call(env)
    env['HTTP_ORIGIN'] = "http://#{env['HTTP_HOST']}"
    @app.call(env)
  end
end