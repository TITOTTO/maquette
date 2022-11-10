class ProfilsController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def create
    User.find(current_user.id).update(admin: true)
  end
end
