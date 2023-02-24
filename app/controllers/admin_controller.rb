# frozen_string_literal: true

class AdminController < ApplicationController
  def hello_world
    @antd[:greetings] = "Hello world from Rails #{Time.zone.now.strftime('at %H:%M:%S')} #{Time.zone.name}"
    render_page
  end

  def basic_form
    render_page
  end

  def create_basic_form
    BasicForm.create!(basic_form_params)
  end

  private

  def basic_form_params
    permitted = params.permit(:title, :goal, :standard, :client, :invites, :weight, :public_type, :public_users)
    permitted[:start_date] = params[:date].first
    permitted[:end_date] = params[:date].second
    permitted
  end
end
