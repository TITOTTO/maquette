class AvatarsController < ApplicationController
  def create
    @user = User.find(params[:profil_id])
    @user.avatar.attach(params[:avatar])
    redirect_to(profil_path(@user))
  end

  def destroy
    @user = User.find(params[:profil_id])
    @user.avatar.purge
    redirect_to(profil_path(@user))
  end
end
