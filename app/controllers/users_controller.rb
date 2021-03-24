class UsersController < ApplicationController
    def update
      @user = User.find(params[:id])
      @user.toggle!(:instructor)
      flash[:success] = 'OK!'
      redirect_to root_path
    end

    def index
      @users = User.all
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to users_path, notice: 'User deleted.'
    end

  end