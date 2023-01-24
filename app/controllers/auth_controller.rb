class AuthController < ApplicationController
  def login
    render_ui
  end

  def current
    render json: {
      success: true,
      data: {
        name: 'Guest',
        avatar: 'https://gw.alipayobjects.com/zos/antfincdn/XAosXuNZyF/BiazfanxmamNRoxxVxka.png',
        access: 'admin',
      },
    }
  end

  def account
    render json: {
      status: 'ok',
      type: params[:type],
      currentAuthority: 'admin'
    }
  end

  def out
    render json: { data: {}, success: true }
  end
end
