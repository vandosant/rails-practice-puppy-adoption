class PlayDatesController < ApplicationController
  def new
    @puppy = Puppy.find(params[:puppy_id])
    @play_date = PlayDate.new(date: Time.now)
  end

  def create
    PlayDate.create(
      play_date_params.merge(
        puppy_id: params[:puppy_id],
        user_id: current_user.id
      )
    )
    redirect_to my_puppy_dashboard_path
  end

  private

  def play_date_params
    params.require(:play_date).permit(:date, :guest_count)
  end
end