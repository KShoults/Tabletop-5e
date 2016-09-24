module StaticPagesHelper
  def read_chardata()
    chardata = File.open("pipeline/chardata.gamestate", "r")
    chardata.read
  end
end
