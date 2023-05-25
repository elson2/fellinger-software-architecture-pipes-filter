class CharcoalFilter
  include IFilter
  NAME = "charcoal"

  def execute(img)
    img = img.charcoal(0.75)
  end
end
