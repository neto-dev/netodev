class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /administracion/comentarios
  # GET /administracion/comentarios.json
  def index
    @comments = Comment.all
    authorize @comments
  end

  # GET /administracion/comentarios/1
  # GET /administracion/comentarios/1.json
  def show
  end

  # GET /administracion/comentarios/new
  def new
    @comment = Comment.new
    authorize @comment
  end

  # GET /administracion/comentarios/1/edit
  def edit
  end

  # POST /administracion/comentarios
  # POST /administracion/comentarios.json
  def create
    @comment = Comment.new(comment_params)
    authorize @comment

    respond_to do |format|
      if @comment.save
        format.html { redirect_to publication_show_path(@comment.publication_id), notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { redirect_to publication_show_path }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administracion/comentarios/1
  # PATCH/PUT /administracion/comentarios/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administracion/comentarios/1
  # DELETE /administracion/comentarios/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
      authorize @comment
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:author, :email, :content, :publication_id)
    end
end
