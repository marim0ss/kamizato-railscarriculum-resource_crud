class UsersController < ApplicationController

  def index
     @users = User.all
  end

  def new
    @user = User.new
  end


  def create
    User.create(usres_params)
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    # user.destoryでも可。
    # destoryだとモデルにdependent:destroyを書くと関連づけられたデータも一緒に消せる
  end

  private
  def usres_params
    params.require(:user).permit(:name, :age)
  end

end
