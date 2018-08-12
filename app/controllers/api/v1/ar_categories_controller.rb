class Api::V1::ArCategoriesController < Api::V1::BaseController
  before_action :set_ar_category, only: [:show, :edit, :update, :destroy]

  # GET /ar_categories
  # GET /ar_categories.json
  def index
    @ar_categories = ArCategory.all
    render json: @ar_categories
  end

  # GET /ar_categories/new
  def new
    @ar_category = ArCategory.new
  end

  # GET /ar_categories/1
  # GET /ar_categories/1.json
  def show; end

  # GET /ar_categories/1/edit
  def edit; end

  # POST /ar_categories
  # POST /ar_categories.json
  def create
    @ar_category = ArCategory.new(ar_category_params)

    respond_to do |format|
      if @ar_category.save
        format.html { redirect_to @ar_category, notice: 'Ar category was successfully created.' }
        format.json { render :show, status: :created, location: @ar_category }
      else
        format.html { render :new }
        format.json { render json: @ar_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ar_categories/1
  # PATCH/PUT /ar_categories/1.json
  def update
    respond_to do |format|
      if @ar_category.update(ar_category_params)
        format.html { redirect_to @ar_category, notice: 'Ar category was successfully updated.' }
        format.json { render :show, status: :ok, location: @ar_category }
      else
        format.html { render :edit }
        format.json { render json: @ar_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ar_categories/1
  # DELETE /ar_categories/1.json
  def destroy
    @ar_category.destroy
    respond_to do |format|
      format.html { redirect_to ar_categories_url, notice: 'Ar category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_ar_category
    @ar_category = ArCategory.find(params[:id])
  end

  def ar_category_params
    params.require(:ar_category).permit(:name, :image_url)
  end
end
