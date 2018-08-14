# frozen_string_literal: true

class ArProductsController < ApplicationController
  before_action :set_ar_product, only: %i[show edit update destroy]

  # GET /ar_products
  # GET /ar_products.json
  def index
    @ar_products = ArProduct.all
  end

  # GET /ar_products/new
  def new
    @ar_product = ArProduct.new
  end

  # GET /ar_products/1
  # GET /ar_products/1.json
  def show; end

  # GET /ar_products/1/edit
  def edit; end

  # POST /ar_products
  # POST /ar_products.json
  def create
    @ar_product = ArProduct.new(ar_product_params)

    respond_to do |format|
      if @ar_product.save
        format.html { redirect_to @ar_product, notice: 'Ar product was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /ar_products/1
  # PATCH/PUT /ar_products/1.json
  def update
    respond_to do |format|
      if @ar_product.update(ar_product_params)
        format.html { redirect_to @ar_product, notice: 'Ar product was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /ar_products/1
  # DELETE /ar_products/1.json
  def destroy
    @ar_product.destroy
    respond_to do |format|
      format.html { redirect_to ar_products_url, notice: 'Ar product was successfully destroyed.' }
    end
  end

  private

  def set_ar_product
    @ar_product = ArProduct.find(params[:id])
  end

  def ar_product_params
    params.require(:ar_product).permit(:product_name, :product_description, :image_url, :ar_subcategory_id)
  end
end
