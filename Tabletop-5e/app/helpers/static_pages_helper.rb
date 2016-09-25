module StaticPagesHelper
  def read_chardata(name = '')
    if name != nil then
      char0 = Character.find_by(name: name)
      char0.shape
    end
  end
end