class MapsController < ApplicationController
  def new
    @map = Map.new()
  end
  
  def show
    @map = Map.find(params[:id])
    gon.map = @map
  end
  
  def create
    @map = Map.new(map_params)
    @map.tiles = @tiles
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
      tile = Tile.new()
      tile.terrain = params[:map][:tiles]
      tile.token = nil
      if params[:map][:tiles] == "blocked"
        tile.walls = "nesw"
      end
      
      @tiles = Array.new(params[:map][:length].to_f) { Array.new(params[:map][:width].to_f, tile) }
      
      params.require(:map).permit(:name, :length, :width, :tiles, :tokens)
    end
end