class LoginController < ApplicationController
  def account
    render json: {
      status: 'ok',
      type: params[:type],
      currentAuthority: 'admin'
    }
  end

  def out_login
    render json: { data: {}, success: true }
  end
end
