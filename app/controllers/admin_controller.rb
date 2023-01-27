# frozen_string_literal: true

class AdminController < ApplicationController
  def index
    @antd[:greetings] = "Hello from Rails #{Time.zone.now.strftime('at %I:%M:%S %p')}"
    render_ui
  end
end
