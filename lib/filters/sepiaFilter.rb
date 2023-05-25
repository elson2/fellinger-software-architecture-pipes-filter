class SepiaFilter
  include IFilter

  FILTER = "sepia"

  def execute(img)
    require 'rmagick'

    mono = img.quantize(256, Magick::GRAYColorspace)
    # Colorize with a 30% blend of a brownish-orange color
    colorized = mono.colorize(0.30, 0.30, 0.30, '#cc9933')
    return colorized
  end
end
