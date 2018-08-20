# frozen_string_literal: true

class ArCategoriesController < ApplicationController
  before_action :set_ar_category, only: %i[show edit update destroy]

  def index
    @ar_categories = ArCategory.all
  end

  # GET /ar_categories/1
  # GET /ar_categories/1.json
  def show; end

  # GET /ar_categories/new
  def new
    @ar_category = ArCategory.new
  end

  # GET /ar_categories/1/edit
  def edit; end

  # POST /ar_categories
  # POST /ar_categories.json
  def create
    @ar_category = ArCategory.new(ar_category_params)

    respond_to do |format|
      if @ar_category.save
        format.html { redirect_to @ar_category, notice: 'Ar category was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /ar_categories/1
  # PATCH/PUT /ar_categories/1.json
  def update
    respond_to do |format|
      if @ar_category.update(ar_category_params)
        format.html { redirect_to @ar_category, notice: 'Ar category was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /ar_categories/1
  # DELETE /ar_categories/1.json
  def destroy
    @ar_category.destroy
    respond_to do |format|
      format.html { redirect_to ar_categories_url, notice: 'Ar category was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ar_category
    @ar_category = ArCategory.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def ar_category_params
    params.require(:ar_category).permit(:name, :image_url)
  end
end
