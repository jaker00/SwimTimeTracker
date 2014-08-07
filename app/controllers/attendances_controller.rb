class AttendancesController < ApplicationController

  def index
    @attendances = Attendance.all
  end

  def show
    @attendance = Attendance.find_by(id: params[:id])
  end

  def new
  end

  def create
    @attendance = Attendance.new
    @attendance.meet_id = params[:meet_id]
    @attendance.swimmer_id = params[:swimmer_id]

    if @attendance.save
      redirect_to "/attendances/#{ @attendance.id }"
    else
      render 'new'
    end
  end

  def edit
    @attendance = Attendance.find_by(id: params[:id])
  end

  def update
    @attendance = Attendance.find_by(id: params[:id])
    @attendance.meet_id = params[:meet_id]
    @attendance.swimmer_id = params[:swimmer_id]

    if @attendance.save
      redirect_to "/attendances/#{ @attendance.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @attendance = Attendance.find_by(id: params[:id])
    @attendance.destroy


    redirect_to "/attendances"
  end
end
