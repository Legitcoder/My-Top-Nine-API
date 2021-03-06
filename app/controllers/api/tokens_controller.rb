class Api::TokensController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      render json: {
          jwt: AuthenticationHelper.issue_token({id: @user.id})
      }
    else
      head :not_found
    end
  end
end
