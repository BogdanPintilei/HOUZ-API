class ArProductsController < ApplicationController
  before_action :set_ar_product, only: [:show, :edit, :update, :destroy]

  # GET /ar_products
  # GET /ar_products.json
  def index
    @ar_products = ArProduct.all
  end

  # GET /ar_products/1
  # GET /ar_products/1.json
  def show
  end

  # GET /ar_products/new
  def new
    @ar_product = ArProduct.new
  end

  # GET /ar_products/1/edit
  def edit
  end

  # POST /ar_products
  # POST /ar_products.json
  def create
    @ar_product = ArProduct.new(ar_product_params)

    respond_to do |format|
      if @ar_product.save
        format.html { redirect_to @ar_product, notice: 'Ar product was successfully created.' }
        format.json { render :show, status: :created, location: @ar_product }
      else
        format.html { render :new }
        format.json { render json: @ar_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ar_products/1
  # PATCH/PUT /ar_products/1.json
  def update
    respond_to do |format|
      if @ar_product.update(ar_product_params)
        format.html { redirect_to @ar_product, notice: 'Ar product was successfully updated.' }
        format.json { render :show, status: :ok, location: @ar_product }
      else
        format.html { render :edit }
        format.json { render json: @ar_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ar_products/1
  # DELETE /ar_products/1.json
  def destroy
    @ar_product.destroy
    respond_to do |format|
      format.html { redirect_to ar_products_url, notice: 'Ar product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ar_product
      @ar_product = ArProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ar_product_params
      params.require(:ar_product).permit(:product_name, :product_description, :product_url, :product_serialized_url)
    end
end
