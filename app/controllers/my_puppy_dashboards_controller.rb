class MyPuppyDashboardsController < ApplicationController
  def add
    @user = current_user
    @user.added_puppies.create(puppy_id: params[:id])
    redirect_to my_puppy_dashboard_path
  end

  def index
    @user = current_user
  end
end