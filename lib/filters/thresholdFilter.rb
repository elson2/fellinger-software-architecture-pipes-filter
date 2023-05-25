
class ThresholdFilter
  FILTER = "threshold"

  def execute(img)
    require 'rmagick'

    result = img.adaptive_threshold
    return result
  end
end
