class ReviewsController < ApplicationController
  # コメントを保存、投稿するためのアクションです。
    def create
      # Blogをパラメータの値から探し出し,Blogに紐づくcommentsとしてbuildします。
      @review = current_user.reviews.build(review_params)
      @jiro = @review.jiro
      # クライアント要求に応じてフォーマットを変更
      respond_to do |format|
        if @review.save
          format.html { redirect_to jiro_path(@jiro), notice: 'コメントを投稿しました。' }
        else
          format.html { render :new }
        end
      end
    end

    private
      # ストロングパラメーター
      def review_params
        params.require(:review).permit(:jiro_id, :content)
      end
  end
