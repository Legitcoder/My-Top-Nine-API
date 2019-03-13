class Api::ItemsController < ApplicationController

  def index
    if params[:category_id].present?
      @category = Category.find(params[:category_id])
      @items = @category.items
    end
  end

  def create
    if params[:category_id].present?
      @category = Category.find(params[:category_id])
      @item = Item.new(image_url: params[:image_url], name: params[:name], category: @category)
      if @item.save
        render "api/items/show"
      end
    end
  end
end
