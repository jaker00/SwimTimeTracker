class MeetEventsController < ApplicationController

  def index
    @meet_events = MeetEvent.all
  end

  def show
    @meet_event = MeetEvent.find_by(id: params[:id])
  end

  def new
    @lengths = MeetEvent::LENGTHS
    @strokes = MeetEvent::STROKES
    @lengthtypes = MeetEvent::LENGTHTYPES
  end

  def create
    @meet_event = MeetEvent.new
    @meet_event.length = params[:length]
    @meet_event.stroke = params[:stroke]
    @meet_event.lengthtype = params[:lengthtype]
    @meet_event.meet_id = params[:meet_id]
    @lengths = MeetEvent::LENGTHS
    @strokes = MeetEvent::STROKES
    @lengthtypes = MeetEvent::LENGTHTYPES
    if @meet_event.save
      redirect_to "/meet_events/#{ @meet_event.id }", :notice => "Event created."
    else
      # you actually can't have a notice when you render, you'll need to display the errors in the view
      render 'new'
    end
  end

  def edit
    @meet_event = MeetEvent.find_by(id: params[:id])
  end

  def update
    @meet_event = MeetEvent.find_by(id: params[:id])
    @meet_event.length = params[:length]
    @meet_event.stroke = params[:stroke]
    @meet_event.meet_id = params[:meet_id]

    if @meet_event.save
      redirect_to "/meet_events/#{ @meet_event.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @meet_event = MeetEvent.find_by(id: params[:id])
    @meet_event.destroy


    redirect_to "/meet_events"
  end
end
