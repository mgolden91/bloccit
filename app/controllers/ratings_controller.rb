class RatingsController < ApplicationController

  before_action :require_sign_in

  before_action :authorize_user, only: [:destroy]


  def create
    @post = Post.find(params[:post_id])
    rating = @post.rating.new(comment_params)
    rating.user = current_user

    if rating.save
      flash[:notice] = "Rating saved successfully."
      redirect_to [@post.topic, @post]
    else
      flash[:alert] = "Comment failed to save."
      redirect_to [@post.topic, @post]
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    rating = @post.ratings.find(params[:id])

    if comment.destroy
      flash[:notice] = "Comment was deleted."
      redirect_to [@post.topic, @post]
    else
      flash[:alert] = "Comment couldn't be deleted. Try again."
      redirect_to [@post.topic, @post]
    end
  end

  private

  def comment_params
    params.require(:rating).permit(:body)
  end

  def authorize_user
    rating = Rating.find(params[:id])
    unless current_user == comment.user || current_user.admin?
      flash[:alert] = "You do not have permission to delete a rating."
      redirect_to [@post.topic, @post]
    end
  end
  end
