class UsersController < ApplicationController
  expose(:user) { User.find(params[:id]) }
  expose(:users) { User.page(params[:page]) }
  expose(:form_action)

  def new
    self.user = User.new
    self.form_action = 'Create'
  end

  def create
    user = User.create!(user_params)
    redirect_to(user)
  end

  def show; end

  def edit
    self.form_action = 'Update'
    render :new
  end

  def update
    user.update(user_params)
    redirect_to(user)
  end

  def index; end

private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
