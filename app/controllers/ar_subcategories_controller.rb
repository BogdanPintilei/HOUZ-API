# frozen_string_literal: true

class ArSubcategoriesController < ApplicationController
  before_action :set_ar_subcategory, only: %i[show edit update destroy]

  # GET /ar_subcategories
  # GET /ar_subcategories.json
  def index
    @ar_subcategories = ArSubcategory.all
  end

  # GET /ar_subcategories/1
  # GET /ar_subcategories/1.json
  def show; end

  # GET /ar_subcategories/1/edit
  def edit; end

  # GET /ar_subcategories/new
  def new
    @ar_subcategory = ArSubcategory.new
  end

  # POST /ar_subcategories
  # POST /ar_subcategories.json
  def create
    @ar_subcategory = ArSubcategory.new(ar_subcategory_params)

    respond_to do |format|
      if @ar_subcategory.save
        format.html { redirect_to @ar_subcategory, notice: 'Ar subcategory was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /ar_subcategories/1
  # PATCH/PUT /ar_subcategories/1.json
  def update
    respond_to do |format|
      if @ar_subcategory.update(ar_subcategory_params)
        format.html { redirect_to @ar_subcategory, notice: 'Ar subcategory was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /ar_subcategories/1
  # DELETE /ar_subcategories/1.json
  def destroy
    @ar_subcategory.destroy
    respond_to do |format|
      format.html { redirect_to ar_subcategories_url, notice: 'Ar subcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_ar_subcategory
    @ar_subcategory = ArSubcategory.find(params[:id])
  end

  def ar_subcategory_params
    params.require(:ar_subcategory).permit(:name, :image_url, :ar_category_id)
  end
end
