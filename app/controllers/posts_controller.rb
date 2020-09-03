class PostsController < ApplicationController
  def index #indexアクションを定義した
    @posts = Post.all.order(id: "DESC")
  end

  def create
    #contentはテーブルのカラム名
    #paramsはリクエストパラメータ→contentが格納されている
    Post.create(content: params[:content])
    redirect_to action: :index
    #post = Post.new(content: params[:content])
    #post.saveでも可
  end

  def checked
    post = Post.find(params[:id])
    if post.checked 
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  end
end