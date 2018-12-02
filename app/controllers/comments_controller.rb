class CommentsController < ApplicationController
  before_action
  def create
    @comment = Comment.new(comments_params)
    @comment.user = current_user
    @checkup = Checkup.find params[:checkup_id]
    @comment.checkup = @checkup
    if @comment.save
      redirect_to checkup_path(@checkup), notice: 'comment was created successfully'
    else

      render 'checkups/show'
    end
  end

  private

  def comments_params
    params.require(:comment).permit(
      :body
    )
  end
end
