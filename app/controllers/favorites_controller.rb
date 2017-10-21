class FavoritesController < ApplicationController

  def create
    @favorite = Favorite.create(user_id: current_user.id, jiro_id: params[:jiro_id])
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
    @user = current_user
    @favorites = Favorite.where(user_id: @user.id).all
  end
end
