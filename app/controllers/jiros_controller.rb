class JirosController < ApplicationController

  before_action :set_jiro, only: [:edit, :update, :destroy]
  before_action :admin_user, only: [:new, :create, :edit, :update, :destroy]

  def index
    #@jiros = Search::Jiro.all
    #@q = Jiro.search(params[:q]).search(search_params)
    @q = Jiro.ransack(params[:q])#:q(query)は入力された値,公式ではransackメソッドを推奨
    @jiros = @q.result(distinct: true) #検索の結果を受け取る。
  end

  def new
    @jiro = Jiro.new
  end

  def create
    Jiro.create(jiros_params)
    redirect_to jiros_path, notice: "店舗情報を作成しました！"
    NoticeMailer.sendmail_jiro(@jiro).deliver
  end

  def show
    @jiro = Jiro.find(params[:id])
    @review = @jiro.reviews.build
    @reviews = @jiro.reviews
  end

  def edit
    @jiro = Jiro.find(params[:id])
  end

  def update
    @jiro = Jiro.find(params[:id])
    @jiro.update(jiros_params)
    redirect_to jiros_path, notice: "店舗情報を更新しました！"
  end

  def destroy
    @jiro = Jiro.find(params[:id])
    @jiro.destroy
    redirect_to jiros_path, notice: "店舗情報を削除しました！"
  end

  private
    def jiros_params
      params.require(:jiro).permit(:shop_name, :content, :shop_address, :telephone_number, :nearest_station, :hours, :holiday, :menu, :note, :image)
    end

    # idをキーとして値を取得するメソッド
    def set_jiro
      @jiro = Jiro.find(params[:id])
    end

    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end

end
