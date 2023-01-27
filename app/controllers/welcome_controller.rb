# frozen_string_literal: true

class WelcomeController < ApplicationController
  def welcome
    render_ui
  end

  def current_user
    render json: {
      success: true,
      data: {
        name: 'Guest',
        avatar: 'https://gw.alipayobjects.com/zos/antfincdn/XAosXuNZyF/BiazfanxmamNRoxxVxka.png',
        access: 'admin'
      }
    }
  end

  def list
    render_ui
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
end
