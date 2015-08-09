class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  #before_filter :check_user, only: [:edit, :update, :destroy]

  
  def show
    @space = Space.find(params[:id])  
  end
  
  def index
    @spaces = Space.all
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user_id = current_user.id
   respond_to do |format| 
    if @space.save
      format.html { redirect_to @space, notice: 'Space was successfully updated.' }
      format.json { render :show, status: :ok, location: @space }
      else
        format.html { render :edit }
      format.json { render json: @space.errors, status: :unprocessable_entity }
    end
    end
  end

  def destroy
    @space = Space.find(params[:id])
    @space.destroy
    redirect_to spaces_path
  end

  def edit
    @space = Space.find(params[:id])
  end

  def update
    respond_to do |format|
      if @space.update(space_params)
        format.html { redirect_to @space, notice: 'Space was successfully updated.' }
        format.json { render :show, status: :ok, location: @space}
      else
        format.html { render :edit }
        format.json { render json: @space.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_space
    @space = Space.find(params[:id])
    end
  

    def space_params
      params.require(:space).permit(:name, :address, :description, :city, :state, :zip, :price, :number_of_seats, :user_id, :image)
    end
  
#def check_user
  #if current_user != @space.user
 #   redirect_to root_url, alert: "Sorry, this Space belongs to someone else"\
  #    end
 # end
end
