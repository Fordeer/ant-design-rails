# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action do
    @antd ||= {
      request_fullpath: request.fullpath
    }
  end

  def render_ui
    respond_to do |format|
      format.html { render html: '', layout: true }
      format.json { render json: @antd }
    end
  end
end
