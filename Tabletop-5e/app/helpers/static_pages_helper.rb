module StaticPagesHelper
  
  def read_chardata(name = '')
    if name != nil then
      char0 = Character.find_by(name: name)
      char0.shape
    end
  end
  
  def full_title(page_title = '')
    base_title = 'Tabletop-5e'
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end