class BlurFilter
  include IFilter
  def execute(img)
    require 'rmagick'
    puts img
    img = Magick::Image.from_blob(img.read).first

    # Make a blurry copy.
    img = img.blur_image(0.0, 2.5)

    return img
  end
end
