class UsersController < ApplicationController
    def update
      @user = User.find(params[:id])
      @user.toggle!(:instructor)
      flash[:success] = 'OK!'
      redirect_to root_path
    end
  end