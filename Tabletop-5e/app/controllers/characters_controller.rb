class CharactersController < ApplicationController
  def new
    @character = Character.new()
  end
  
  def show
    @character = Character.find(params[:id])
  end
  
  def create
    @character = Character.new(character_params)
    if @character.save
      flash[:success] = "Character created successfully."
      redirect_to @character
    else
      flash.now[:danger] = "Character creation failed."
      render 'new'
    end
  end
  
  def index
  end
  
  private
  
    def character_params
      params.require(:character).permit(:name, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma,
                                   :character_class, :race, :backgroud, :alignment, :player_name, :experience_points,
                                   :speed, :max_hit_points, :type_hit_dice, :languages, :inventory)
    end
end
