class ThresholdFilter
  include IFilter
  NAME = "threshold"

  def execute(img)
    result = img.adaptive_threshold
  end
end
