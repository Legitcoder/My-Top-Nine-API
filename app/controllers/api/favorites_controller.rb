class Api::FavoritesController < ApplicationController

  def index
    if params[:user_id].present?
      @favorites = Favorite.where(user_id: params[:user_id])
    end
  end

  def create
    if params[:user_id].present?
      @favorite = Favorite.new(name: params[:name], image_url: params[:image_url], position: params[:position], user_id: params[:user_id])
      if @favorite.save
        render "api/favorites/show"
      end
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    render "api/favorites/show"
  end

end
