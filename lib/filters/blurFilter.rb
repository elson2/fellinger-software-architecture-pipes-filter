class BlurFilter
  include IFilter
  NAME = "blur"

  def execute(img)
    img = img.blur_image(100, 10)
  end
end
