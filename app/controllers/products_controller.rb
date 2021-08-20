class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def show
    @product = Product.find(params[:id])
  end
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(title: "...", body: "...")

    if @product.save
      redirect_to @product
    else
      render :new
    end
  end
  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
