class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts.each_with_index do |entry, index|
      if index % 5 == 0
        entry.title = "spam"
      end
    end
  end

  def show
  end

  def new
  end

  def edit
  end

end
