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
        access: 'admin',
      },
    }
  end

  def list
    render_ui
  end

  def rule
  end
end
