module CharacterHelper
  def exp_to_level experience_points
    experience = experience.to_f
    if experience < 300
      1
    elsif experience < 900
      2
    elsif experience < 2700
      3
    elsif experience < 6500
      4
    elsif experience < 14000
      5
    elsif experience < 23000
      6
    elsif experience < 34000
      7
    elsif experience < 48000
      8
    elsif experience < 64000
      9
    elsif experience < 85000
      10
    elsif experience < 100000
      11
    elsif experience < 120000
      12
    elsif experience < 140000
      13
    elsif experience < 165000
      14
    elsif experience < 195000
      15
    elsif experience < 225000
      16
    elsif experience < 265000
      17
    elsif experience < 305000
      18
    elsif experience < 355000
      19
    else
      20
    end
  end
end