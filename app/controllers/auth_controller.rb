# frozen_string_literal: true

class AuthController < ApplicationController
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

  def login
    render json: {
      status: 'ok',
      type: params[:type],
      current_authority: 'admin'
    }
  end

  def logout
    render json: { data: {}, success: true }
  end
end
