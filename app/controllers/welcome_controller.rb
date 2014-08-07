class WelcomeController < ApplicationController
  def home
    @swimmer = Swimmer.find_by(id: params[:id])
  end
end