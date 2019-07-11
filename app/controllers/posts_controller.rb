class PostsController < ApplicationController
  def new
  	 # 空のモデルをビューへ渡す
      @post = Post.new
  end

  def create
    post = Post.new(post_params) #ストロングパラメーターを使用
    post.save # DBへ保存する
    redirect_to post_path(post.id) #詳細画面へリダイレクト
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post.id)
  end

  def destroy
    post = Post.find(params[:id]) #データを1件取得
    #レコードをデータベースから削除
    post.destroy
    redirect_to posts_path #post一覧画面へリダイレクト
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :image)
  end
end
