class PostsController < ApplicationController
  def index #indexアクションを定義した
    @posts = Post.all
  end

  def new
  end

  def create
    #contentはテーブルのカラム名
    #paramsはリクエストパラメータ→contentが格納されている
    Post.create(content: params[:content])
    #post = Post.new(content: params[:content])
    #post.saveでも可
  end
end