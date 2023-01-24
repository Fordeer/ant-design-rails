class AdminController < ApplicationController
  def index
    @antd[:greetings] = "Hello from Rails #{Time.now.strftime("at %I:%M:%S %p")}"
    render_ui
  end
end
