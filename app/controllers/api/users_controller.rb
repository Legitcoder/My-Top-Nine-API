class Api::UsersController < ApplicationController

  #Sign up new user
  def create
    @user = User.new(user_params)
    if @user.save
      render :ok, json: {
          jwt: AuthenticationHelper.issue_token({id: @user.id})
      }
    else
      @errors = @user.errors.full_messages
      render json: { message: @errors }, status: :unauthorized
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.permit(:username, :password)
  end


end
