class ProductsController < ApplicationController
  before_action :authenticate_tiend!
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = current_tiend.products
  end

  def show
    @product = Product.find(params[:id])
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = current_tiend.products.build(product_params)
    #render :show, status: :ok, location: @product
    if @product.save
      redirect_to @product, notice: 'Producto creado exitosamente.'
      
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to products_path, notice: 'Producto actualizado exitosamente.'
      
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: 'Producto eliminado exitosamente.'
  end

  private

  def set_product
    @product = current_tiend.products.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:nombre, :precio, :cost_precio, :cantidad)
  end
end
