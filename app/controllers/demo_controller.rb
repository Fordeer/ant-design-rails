# frozen_string_literal: true

class DemoController < ApplicationController
  def hello_world
    @antd[:greetings] = "Hello world from Rails #{Time.zone.now.strftime('at %H:%M:%S')} #{Time.zone.name}"
    antd_render
  end

  def basic_form
    antd_render
  end

  def create_basic_form
    BasicForm.create!(basic_form_params)
  end

  def list
    antd_render
  end

  def rule
    query = RuleListItem.all
    page_size = params[:pageSize].present? ? params[:pageSize].to_i : 10
    page = params[:current].present? ? params[:current].to_i : 1
    render json: {
      data: query.page(page).per(page_size).as_json(methods: :key),
      total: query.count,
      success: true,
      page_size:,
      current: page
    }
  end

  private

  def basic_form_params
    permitted = params.permit(:title, :goal, :standard, :client, :invites, :weight, :public_type, :public_users)
    permitted[:start_date] = params[:date].first
    permitted[:end_date] = params[:date].second
    permitted
  end
end
