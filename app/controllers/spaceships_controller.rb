class SpaceshipsController < ApplicationController
  def index
    @spaceships = Spaceship.all
  end

  def show
    @spaceship = Spaceship.find(params[:id])
  end

  def new
    @spaceship = Spaceship.new
  end

  def create
    @spaceship = Spaceship.new(params[:spaceship])
    if @spaceship.save
      flash[:notice] = "Successfully created spaceship."
      redirect_to @spaceship
    else
      render :action => 'new'
    end
  end

  def edit
    #@spaceship = Spaceship.find(params[:id])
    flash[:error] = "You cannot edit a ship at this time."
    redirect_to spaceships_path
  end

  #def update
  #  @spaceship = Spaceship.find(params[:id])
  #  if @spaceship.update_attributes(params[:spaceship])
  #    flash[:notice] = "Successfully updated spaceship."
  #    redirect_to @spaceship
  #  else
  #    render :action => 'edit'
  #  end
  #end

  #def destroy
  #  @spaceship = Spaceship.find(params[:id])
  #  @spaceship.destroy
  #  flash[:notice] = "Successfully destroyed spaceship."
  #  redirect_to spaceships_url
  #end
end
