class UsersController < ApplicationController
  expose(:user) { User.find(params[:id]) }

  def new
    self.user = User.new
  end

  def create
    user = User.create!(user_params)
    redirect_to(user)
  end

  def show; end


private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
