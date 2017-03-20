class HomeController < ApplicationController
  before_filter :require_permission, :only => :delete
  def require_permission
    if current_model != Post.find(params[:id]).model
      redirect_to root_path
    end
  end

  def index
    @posting = Post.all
  end

  def write
    posting = Post.new
    posting.model_id = current_model.id
    posting.post_title = params[:title]
    posting.post_content = params[:content]
    posting.save
    redirect_to '/'
  end

  def delete
      one_post = Post.find(params[:id])
      one_post.destroy
      redirect_to '/'
  end

end
