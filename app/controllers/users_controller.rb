class UsersController < ApplicationController
  def index
  end

  def show
    @q = User.ransack(params[:q])
    @users = @q.result
  end

end
