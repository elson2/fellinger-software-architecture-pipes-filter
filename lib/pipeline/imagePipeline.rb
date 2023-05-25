class ImagePipeline
  attr_accessor :filters

  def initialize(filters)
    @filters = filters
  end

  def execute(img)
    @filters.each do |filter|
      puts img.class
      img = filter.execute img
    end
    return img
  end
end
