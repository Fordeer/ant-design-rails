# frozen_string_literal: true

class AdminController < ApplicationController
  def sub_page
    @antd[:greetings] = "Hello from Rails #{Time.zone.now.strftime('at %H:%M:%S')} #{Time.zone.name}"
    render_page
  end
end
