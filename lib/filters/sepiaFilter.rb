class SepiaFilter
  include IFilter
  NAME = "sepia"

  def execute(img)
    mono = img.quantize(256, Magick::GRAYColorspace)
    colorized = mono.colorize(0.30, 0.30, 0.30, '#cc9933')
  end
end
