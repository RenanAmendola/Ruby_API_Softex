class ProductsController < ApplicationController

    def index 
        @products = Product.order(created_at: :desc)

        render json: @products
    end

    def create
        @product = Product.new product_params

        if @product.save
            render json: @product, status: :created
        else
            render json: @product.errors, status: :unprocessable_entity
        end
    end

    def show
        @product = Product.find params[:id]

        render json: @product
    end

    def update 
        @product = Product.find params[:id]

        if @product.update product_params
            render json: @product
        else
            render json: @product.errors, status: :unprocessable_entity
        end

    end

    def destroy
        @product = Product.find params[:id]

        if @product.destroy
            render json: @product, status: :ok
        else
            render json: @product.errors, status: :not_found
        end
    end


    private
    def product_params
        params.permit(:name, :price, :photo, :is_promotion)
    end

end
