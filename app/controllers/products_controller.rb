class ProductsController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @products = pagy(Product.all, page: params[:page], items: 21)
  end

  def new
    @product = Product.new
  end

  def get_eld
    @products = Product.where(set: "eld")
    render partial: "products/catalog", :products => @products
  end

  def show
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
    def product_parameters
      params.require(:product).permit(:name, :set, :image_uris, :card_id)
    end
end