class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @yogaclass = Yogaclass.find(params[:place_id])
    @yogaclass.comments.create(comment_params.merge(user: current_user))
    redirect_to yogaclass_path(@yogaclass)
  end

  private

  def comment_params
    params.require(:comment).permit(:messages, :rating)
  end
end
