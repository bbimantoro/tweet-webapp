class PostController < ApplicationController
  before_action :authenticate_user

  def index
    @posts = Post.all.order(created_at: :desc)
  end
  def show
    @post = Post.find_by(id: params[:id])
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(content: params[:content])
    
    if @post.save
      flash[:notice] = "Post successfully created"
      redirect_to("/post/index")
    else
      render("post/new")
    end
  end
  def edit
    @post = Post.find_by(id: params[:id])
  end
  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "Post successfully edited"
      redirect_to("/post/index")
    else
      render('post/edit')
    end
    
  end
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "Post successfully deleted"
    
    redirect_to("/post/index")
  end
end
