# frozen_string_literal: true

class LoginController < ApplicationController
  def account
    render json: {
      status: 'ok',
      type: params[:type],
      current_authority: 'admin'
    }
  end

  def out_login
    render json: { data: {}, success: true }
  end
end
