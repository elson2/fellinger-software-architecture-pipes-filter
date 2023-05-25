class BlurFilter
  include IFilter

  FILTER = "blur"

  def execute(img)
    require 'rmagick'

    # Make a blurry copy.
    img = img.blur_image(0.0, 2.5)

    return img
  end
end
