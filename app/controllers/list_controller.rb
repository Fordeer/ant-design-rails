# frozen_string_literal: true

class ListController < ApplicationController
  def index
    render_page
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
