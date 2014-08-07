class SwimmersController < ApplicationController
  before_filter :login_required, :except => [:index, :new, :create]
  
  def index
    @swimmers = Swimmer.all
  end
  
  def viewtimes
    @swimmer = Swimmer.find_by(id: params[:id])
  end
  
  def view
  end
  
  def show
    @swimmer = Swimmer.find_by(id: params[:id])
  end

  def new
  end

  def create
    @swimmer = Swimmer.new
    @swimmer.first_name = params[:first_name]
    @swimmer.last_name = params[:last_name]
    @swimmer.username = params[:username]
    @swimmer.password = params[:password]
    @swimmer.password_confirmation = params[:password_confirmation]
    @swimmer.age = params[:age]
    
    if @swimmer.save
      redirect_to "/swimmers/#{ @swimmer.id }"
    else
      render 'new'
    end
  end

  def edit
    @swimmer = Swimmer.find_by(id: params[:id])
    if @swimmer.id != session['id']
      redirect_to "/swimmers", :notice => "Can't access that."
    end
  end

  def update
    @swimmer = Swimmer.find_by(id: params[:id])
    @swimmer.first_name = params[:first_name]
    @swimmer.last_name = params[:last_name]
    @swimmer.username = params[:username]
    @swimmer.password = params[:password]
    @swimmer.password_confirmation = params[:password_confirmation]
    @swimmer.age = params[:age]

    if @swimmer.save
      redirect_to "/swimmers/#{ @swimmer.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @swimmer = Swimmer.find_by(id: params[:id])
    @swimmer.destroy


    redirect_to "/swimmers"
  end
end
