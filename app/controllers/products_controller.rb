class ProductsController < ApplicationController
  include Pagy::Backend
  include ApplicationHelper

  def index
    if params[:search].nil?
      @pagy, @products = pagy(Product.where(set: sort_sets), items: 21)
    else
      @pagy, @products = pagy(Product.search(params[:search]).all, items: 21)
    end
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
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

    def sort_sets
      %w[iko thb eld].include?(params[:sort]) ? params[:sort] : "eld"
    end
end