class ItemsController < ApplicationController

  def new
    binding.pry
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path, notice: "Item created Successfully"
    else
      render 'new'
    end
  end

  def index
    @items = Item.all
  end

  private

  def item_params
    params.require(:item).permit(:title, :description, :quantity)
  end


end