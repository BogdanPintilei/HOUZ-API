class Api::V1::ArSubcategoriesController < Api::V1::BaseController
  before_action :set_ar_subcategory, only: [:show, :edit, :update, :destroy]

  # GET /ar_subcategories
  # GET /ar_subcategories.json
  def index
    @ar_subcategories = ArSubcategory.all
    render json: @ar_subcategories
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
        format.json {render :show, status: :created, location: @ar_subcategory}
      else
        format.json {render json: @ar_subcategory.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /ar_subcategories/1
  # PATCH/PUT /ar_subcategories/1.json
  def update
    respond_to do |format|
      if @ar_subcategory.update(ar_subcategory_params)
        format.json {render :show, status: :ok, location: @ar_subcategory}
      else
        format.json {render json: @ar_subcategory.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /ar_subcategories/1
  # DELETE /ar_subcategories/1.json
  def destroy
    @ar_subcategory.destroy
    respond_to do |format|
      format.json {head :no_content}
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ar_subcategory
    @ar_subcategory = ArSubcategory.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def ar_subcategory_params
    params.require(:ar_subcategory).permit(:ar_subcategory_name, :image_url)
  end
end
