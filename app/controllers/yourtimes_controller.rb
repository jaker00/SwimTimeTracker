class AttendancesController < ApplicationController
  
  def times
    @swimmer = Swimmer.find_by(id: params[:id])
  end  
end