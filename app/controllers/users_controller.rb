class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.where.not(id: current_user.id)  #where.not条件にマッチしないレコードを返す＝自分以外のレコードを取得＝自分をスワイプページに出さない
    @user = User.find(current_user.id) #現在ログインしているユーザのレコード情報
  end
  def show
    @user = User.find(params[:id])
  end
end
