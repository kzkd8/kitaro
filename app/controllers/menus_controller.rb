class MenusController < ApplicationController
  before_action :authenticate_user, {only: [:new, :create, :edit, :update, :destroy]}

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(
      product: params[:product],
      price: params[:price],
      product_image: "default.jpg",
      category: params[:category]
    )
    @menu.save
    redirect_to("/menus/index")
  end

  def index
    @menus = Menu.all.order(category: :asc)
  end

  def show
    @menu = Menu.find_by(id: params[:id])

  end

  def edit
    @menu = Menu.find_by(id: params[:id])
  end

  def update
    @menu = Menu.find_by(id: params[:id])
    @menu.product = params[:product]
    @menu.price = params[:price]
    @menu.category = params[:category]
    if params[:product_image]
    @menu.product_image = "#{@menu.id}.jpg"
    product_image = params[:product_image]
    File.binwrite("public/product_images/#{@menu.product_image}", product_image.read)
    end
    @menu.save
    redirect_to("/menus/index")
  end

  def destroy
    @menu = Menu.find_by(id: params[:id])
    @menu.destroy
    redirect_to("/menus/index")
  end


end
