class Token
  include TokensHelper
  
  def initialize character
    @name = character.name
    @strength = character.strength
    @dexterity = character.dexterity
    @constitution = character.constitution
    @intelligence = character.intelligence
    @wisdom = character.wisdom
    @charisma = character.charisma
    @character_class = character.character_class
    @race = character.race
    @background = character.background
    @alignment = character.alignment
    @player_name = character.player_name
    @experience_points = character.experience_points
    @speed = character.speed
    @max_hit_points = character.max_hit_points
    @type_hit_dice = character.type_hit_dice
    @languages = character.languages
    @inventory = character.inventory
    
    fill_token_data
    super()
  end
  
  # define accessors
  
  attr_accessor :name
  attr_accessor :level
  attr_accessor :proficiency_bonus
  attr_accessor :strength
  attr_accessor :strength_bonus
  attr_accessor :dexterity
  attr_accessor :dexterity_bonus
  attr_accessor :constitution
  attr_accessor :constitution_bonus
  attr_accessor :intelligence
  attr_accessor :intelligence_bonus
  attr_accessor :wisdom
  attr_accessor :wisdom_bonus
  attr_accessor :charisma
  attr_accessor :charisma_bonus
  attr_accessor :character_class
  attr_accessor :race
  attr_accessor :background
  attr_accessor :alignment
  attr_accessor :player_name
  attr_accessor :experience_points
  attr_accessor :speed
  attr_accessor :max_hit_points
  attr_accessor :type_hit_dice
  attr_accessor :languages
  attr_accessor :inventory
  attr_accessor :current_hit_points
  attr_accessor :armor_class
  attr_accessor :hit_dice
  
  private
  
    def fill_token_data
      @level = exp_to_level @experience_points
      @proficiency_bonus = find_proficency_bonus @level
      @strength_bonus = find_attribute_bonus @strength
      @dexterity_bonus = find_attribute_bonus @dexterity
      @constitution_bonus = find_attribute_bonus @constitution
      @intelligence_bonus = find_attribute_bonus @intelligence
      @wisdom_bonus = find_attribute_bonus @wisdom
      @charisma_bonus = find_attribute_bonus @charisma
      @current_hit_points = @max_hit_points
      @initiative_bonus = @dexterity_bonus
      @hit_dice = find_hit_dice @level, @type_hit_dice
    end
end