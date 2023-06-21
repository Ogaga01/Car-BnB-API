class UsersController < ApplicationController
  def index
    @users = User.all.order(:id)
    render json: @users
  end

  def register
    @user = User.find_by(username: params[:username].downcase)
    if @user.nil?
      @user = User.new(user_params)
      @user.username = @user.username.downcase
      if @user.save
        render json: { user: @user, logged_in: true }, status: :created
      else
        render status: 500, json: { message: 'There was an error, please try again!', status: 403 }
      end
    else
      render status: 403, json: { message: 'Username already exists! please choose another one.', status: 403 }
    end
  end

  def login
    @user = User.find_by(username: params[:username].downcase)
    if @user.nil?
      render status: 403, json: { message: 'Username is invalid', status: 403 }
    else
      render json: { user: @user, logged_in: true }, status: :ok
    end
  end

  private

  def user_params
    params.permit(:name, :username)
  end
end
