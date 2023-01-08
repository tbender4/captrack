class ProductsController < ApplicationController
  before_action :find_product, only: %i[show edit update destroy]
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show; end
  def edit; end

  def destroy
    return unless @product.destroy

    redirect_to products_path
  end

  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    @product = Product.new article_params
    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def article_params
    params.require(:products).permit(
      :part_number,
      :mfr_part_number,
      :quantity,
      :pkg,
      :status,
      :type
    )
  end

  def find_product
    @product = Product.find params[:id]
  end
end
