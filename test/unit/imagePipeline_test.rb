require 'test_helper'

class ImagePipelineTest < ActionView::TestCase
  include ImageHelper

  test "pipeline changes output image" do
    image = create_random_test_image(100, 100)
    filters = [BlurFilter.new, SepiaFilter.new]
    pipeline = ImagePipeline.new filters

    outputImage = pipeline.execute image

    assert_not_equal image_to_hash(image), image_to_hash(outputImage)
  end
end

