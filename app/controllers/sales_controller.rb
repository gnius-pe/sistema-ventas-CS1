
  class SalesController < ApplicationController
    before_action :set_sale, only: [:show, :edit, :update, :destroy]

    def index
      
    end

    def new
      
      
      @sale = current_tiend.sales.build
      @sale.sale_items.build
      @products = current_tiend.products
      @products.each do |product|

      end
    end

    def create
      @sale = current_tiend.sales.build(sale_params)
      if @sale.save
        redirect_to @sale, notice: 'La venta se ha creado exitosamente.'
      else
        render :new
      end
    end

    def show
    end

    def edit
    end

    def update
      
    end

    def destroy
      @sale.destroy
      redirect_to sales_url, notice: 'La venta se ha eliminado exitosamente.'
    end

    # app/controllers/sales_controller.rb
    def factura
      @sales = current_tiend.sales.order(sale_date: :desc)
    end

    private
      def set_sale
        @sale = current_tiend.sales.find(params[:id])
      end

      def sale_params
        params.require(:sale).permit(:customer_name, :sale_date, :total, sale_items_attributes: [:product_id, :quantity, :price])
      end
  end
