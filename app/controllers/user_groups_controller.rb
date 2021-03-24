Class UserGroupsController < ApplicationController
def new
    @group = Group.find params[:group_id]
    @user_group = User_group.new({group: group})
  end

  def create
    @group = Group.find params[:group_id]
    @user_group = User_group.new(user_group_params)
  end

  private

  def user_group_params
      params.require(:user_group).merge(group_id: params[:group_id], user_id: current_user.id)
  end
end
