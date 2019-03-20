class PublicationsController < ApplicationController
  before_action :set_publication, only: [:show, :edit, :update, :destroy]

  # GET /administracion/publicaciones
  # GET /administracion/publicaciones.json
  def index
    @publications = Publication.all
    authorize @publications
  end

  # GET /administracion/publicaciones/1
  # GET /administracion/publicaciones/1.json
  def show
  end

  # GET /administracion/publicaciones/new
  def new
    @publication = Publication.new
    authorize @publications
  end

  # GET /administracion/publicaciones/1/edit
  def edit
  end

  # POST /administracion/publicaciones
  # POST /administracion/publicaciones.json
  def create
    @publication = Publication.new(publication_params)
    authorize @publication

    respond_to do |format|
      if @publication.save
        format.html { redirect_to @publication, notice: 'Publication was successfully created.' }
        format.json { render :show, status: :created, location: @publication }
      else
        format.html { render :new }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administracion/publicaciones/1
  # PATCH/PUT /administracion/publicaciones/1.json
  def update
    respond_to do |format|
      if @publication.update(publication_params)
        format.html { redirect_to @publication, notice: 'Publication was successfully updated.' }
        format.json { render :show, status: :ok, location: @publication }
      else
        format.html { render :edit }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administracion/publicaciones/1
  # DELETE /administracion/publicaciones/1.json
  def destroy    
    @publication.destroy
    respond_to do |format|
      format.html { redirect_to publications_url, notice: 'Publication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publication
      @publication = Publication.find(params[:id])
      authorize @publication
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publication_params
      params.require(:publication).permit(:title, :image, :preview, :article, :category_id, :user_id)
    end
end
