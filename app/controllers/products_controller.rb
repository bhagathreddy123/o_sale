class ProductsController < ApplicationController
  before_action :set_product, only: [:edit,:update, :show, :destroy]
  def index
  	@products = Product.all
  end

  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(product_params)
  	if @product.save
  		redirect_to products_path
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  	if @product.update(product_params)
  		redirect_to products_path 
  	else
  		render :edit
  	end
  end

  def show
  end

  def destroy
  	 @product.destroy
  	  redirect_to products_path
  end

  private

  def set_product
  	begin
  	  	@product = Product.find(params[:id])
  	rescue ActiveRecord::RecordNotFound
  		redirect_to root_path
  	end
  end

  def product_params
  	params.require(:product).permit!
  end

end
