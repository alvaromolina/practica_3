class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]




  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)
    @post = Post.find(params[:comment][:post_id])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @post, notice: 'Comentario was successfully created.' }
        format.json { render action: 'show', status: :created, location: @comment }
      else
        format.html { redirect_to @post, notice: 'Error.' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:post_id, :text)
    end
end
