class ReviewsController < ApplicationController
  before_action :set_jiro, only: [:index, :new, :create]
  #before_action do
    #@jiro = Jiro.find(params[:jiro_id])
  #end

  def index
    @reviews = @jiro.reviews
    @reviews = Review.page(params[:page]).per(2)
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
    jiro_id: params[:jiro_id],
    image: review_params[:image]
    )
    if @review.save
      redirect_to jiro_reviews_path,notice:"レビューを作成しました！"
    else
      render 'new'
    end
  end

  def show
    @review = Review.find(params[:id])
    @comment = @review.comments.build
    @comments = @review.comments
  end

    private
      # ストロングパラメーター
      def review_params
        params.require(:review).permit(:jiro_id, :title, :image, :content, :image_cache, :remove_image)
      end

      def set_jiro
        @jiro = Jiro.find(params[:jiro_id])
      end
  end
