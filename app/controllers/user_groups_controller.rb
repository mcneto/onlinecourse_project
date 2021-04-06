class UserGroupsController < ApplicationController
  def new
    @group = Group.find params[:group_id]
    @user_group = User_group.new({ group: group })
  end

  def create
    @group = Group.find params[:group_id]
    @user_group = User_group.new(user_group_params)
  end
end
