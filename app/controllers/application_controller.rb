class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
protect_from_forgery with: :exception
  
  def login_required
    swimmer = Swimmer.find_by(username: session['username'])
    if swimmer.blank?
      redirect_to '/sessions/new'
    end
  end
end
