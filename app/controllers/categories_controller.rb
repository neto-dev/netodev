class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  before_action :get_categories_list

  # GET /administracion/categorias
  # GET /administracion/categorias.json
  def index
    @category = Category.all
    authorize @category
  end

  # GET /administracion/categorias/1
  # GET /administracion/categorias/1.json
  def show
  end

  # GET /administracion/categorias/new
  def new
    @category = Category.new
    authorize @category
  end

  # GET /administracion/categorias/1/edit
  def edit
  end

  # POST /administracion/categorias
  # POST /administracion/categorias.json
  def create
    @category = Category.new(category_params)
    authorize @category

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administracion/categorias/1
  # PATCH/PUT /administracion/categorias/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administracion/categorias/1
  # DELETE /administracion/categorias/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
      authorize @category
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :description)
    end

    def get_categories_list
       @categories = Category.all
    end
end
