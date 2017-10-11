class ReviewsController < ApplicationController

  before_action do
    @jiro = Jiro.find(params[:jiro_id])
  end

  def index
    @reviews = @jiro.reviews
  end

  def new
    if params[:back]
      @review = Review.new(review_params)
    else
      @review = Review.new
    end
  end

  def create
    @review = Review.new(
    title: review_params[:title],
    content: review_params[:content],
    user_id: current_user.id,
    jiro_id: params[:jiro_id]
    )
    if @review.save
      redirect_to jiro_reviews_path,notice:"レビューを作成しました！"
    else
      render 'new'
    end
  end

  def show
    @review = Review.find(params[:id])
  end

    private
      # ストロングパラメーター
      def review_params
        params.require(:review).permit(:jiro_id, :title, :content)
      end
  end
