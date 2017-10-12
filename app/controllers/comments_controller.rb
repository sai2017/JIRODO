class CommentsController < ApplicationController
  # コメントを保存、投稿するためのアクションです。
  def create
    # Blogをパラメータの値から探し出し,Blogに紐づくcommentsとしてbuildします。
    @comment = current_user.comments.build(comment_params)
    @review = @comment.review
    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @comment.save
        format.html { redirect_to review_path(@review), notice: 'コメントを投稿しました。' }
        format.js { render :index }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @review = @comment.review
    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
     @comment.destroy
     format.html { redirect_to review_path(@review) }
      flash.now[:notice] = "コメントが削除されました!"
    # JS形式でレスポンスを返します。
     format.js { render :index }
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to review_path(@comment.review), notice: "コメントを更新しました"
    else
      render 'edit'
    end
  end

  private
    # ストロングパラメーター
    def comment_params
      params.require(:comment).permit(:review_id, :content)
    end
end
