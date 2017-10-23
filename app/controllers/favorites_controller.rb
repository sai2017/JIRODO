class FavoritesController < ApplicationController
#before_action :current_user?, only:[:create,:destroy,:index]
  def create
    @favorite = current_user.favorites.create(user_id: current_user.id, jiro_id: params[:jiro_id])
    @favorites = Favorite.where(jiro_id: params[:jiro_id])
    #@jiros = Jiro.all
    @favorite.save
    @jiro = @favorite.jiro
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, jiro_id: params[:jiro_id])
    @favorite.destroy
    @favorites = Favorite.where(jiro_id: params[:jiro_id])
    #@jiros = Jiro.all
    @jiro = @favorite.jiro
  end

  def index
    @favorites = current_user.favorite_jiros
    @favorite_jiros = Jiro.joins(:favorites)
    #@favorite_jiros.user_id = current_user.id
  end
end
