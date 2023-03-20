class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
  def index
    @users = User.all
    render json: {meta: "working", data: @users}, status: :ok
  end

  def create
    @user = User.new(user_params)
    if @user.save
        render json: {meta: "user created", data: @user}, status: :ok
    else
        render json: {meta: "error", data: @user.errors}, status: :not_found
    end
  end
  def show 
    @user = User.find(params[:id])
    if @users
      render json: {meta: "user found!", data:@users}, status: :ok
    else
      render json: {meta: "user not found!"}, status: :not_found
    end
  end

private

    def user_params
        params.permit(:name,:email,:profile_picture)
    end

end
