class ImagePipeline
  attr_accessor :filters

  def initialize(filters)
    @filters = filters
  end

  def execute(img)
    @filters.each do |filter|
      img = filter.execute img
    end
    return img
  end
end
