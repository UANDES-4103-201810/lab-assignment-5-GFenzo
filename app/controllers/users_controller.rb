class UsersController < ApplicationController
  def create
    @user = User.new(params[:name, :last_name, :email, :phone, :password, :address])
    if @user.save
      render json: @user
    end
  end

  def destroy
    @user.destroy
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    else
      render json: @user
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def more_tickets_boughts
    @most = UserTicket.find(params[:id])
    render json: @most
  end
end
