class SwimTimesController < ApplicationController

  def index
    @swim_times = SwimTime.all
  end

  def show
    @swim_time = SwimTime.find_by(id: params[:id])
  end

  def new
    @attendance = Attendance.all
  end

  def create
    @swim_time = SwimTime.new
    @swim_time.time = params[:time]
    @swim_time.meet_event_id = params[:meet_event_id]
    @swim_time.attendance_id = params[:attendance_id]

    if @swim_time.save
      redirect_to "/swim_times/#{ @swim_time.id }"
    else
      render 'new'
    end
  end

  def edit
    @swim_time = SwimTime.find_by(id: params[:id])
  end

  def update
    @swim_time = SwimTime.find_by(id: params[:id])
    @swim_time.time = params[:time]
    @swim_time.meet_event_id = params[:meet_event_id]
    @swim_time.attendance_id = params[:attendance_id]

    if @swim_time.save
      redirect_to "/swim_times/#{ @swim_time.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @swim_time = SwimTime.find_by(id: params[:id])
    @swim_time.destroy


    redirect_to "/swim_times"
  end
end
