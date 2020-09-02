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
end