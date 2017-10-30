class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_jiro, only: [:index, :new, :create, :edit, :update, :destroy]
  #before_action :set_review, only: [:edit, :update, :destroy]
  #before_action do
    #@jiro = Jiro.find(params[:jiro_id])
  #end

  def index
    @reviews = @jiro.reviews.page(params[:page]).per(2).all.order(created_at: :desc)
    #@reviews = Review.page(params[:page]).per(2)
    #@reviews = Kaminari.paginate_array(array).page(params[:page]).per(2)
    #@reviews = current_user.reviews.page(params[:page])
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

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to jiro_reviews_path, notice: "レビューを更新しました！"
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to jiro_reviews_path, notice: "レビューを削除しました！"
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
