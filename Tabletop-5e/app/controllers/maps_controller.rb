class MapsController < ApplicationController
  def new
    @map = Map.new()
    render 'show'
  end
  
  def show
    @map = Map.find(params[:id])
  end
  
  def create
    @map = Map.new(map_params)
    if @map.save
      flash[:success] = "Map saved"
      redirect_to maps_path
    else
      flash.now[:danger] = "Map saving failed."
      render 'new'
    end
  end
  
  def index
  end
  
  def destroy
    @map = Map.find(params[:id])
    if @map.delete 
      flash[:success] = "Map deleted"
      redirect_to maps_path
    else
      flash.now[:danger] = "Map deletion failed."
      render 'show'
    end
  end
  
  private
    
    def map_params
      params.require(:map).permit(:name, :length, :width, :tiles, :tokens)
    end
end