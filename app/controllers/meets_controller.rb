class MeetsController < ApplicationController

  def index
    @meets = Meet.all
  end

  def show
    @meet = Meet.find_by(id: params[:id])
  end

  def new
  end

  def create
    @meet = Meet.new
    @meet.name = params[:name]

    if @meet.save
      redirect_to "/meets/#{ @meet.id }"
    else
      render 'new'
    end
  end

  def edit
    @meet = Meet.find_by(id: params[:id])
  end

  def update
    @meet = Meet.find_by(id: params[:id])
    @meet.name = params[:name]

    if @meet.save
      redirect_to "/meets/#{ @meet.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @meet = Meet.find_by(id: params[:id])
    @meet.destroy


    redirect_to "/meets"
  end
end
