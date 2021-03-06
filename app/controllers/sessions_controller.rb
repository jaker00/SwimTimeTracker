class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    @swimmer = Swimmer.find_by_username(params['username'])
    if @swimmer && @swimmer.authenticate(params['password'])
      session['username'] = params['username']
      redirect_to "/home"
    else
      redirect_to '/sessions/new'
    end
  end
  
  def destroy
    reset_session
    redirect_to '/sessions/new'
  end
end