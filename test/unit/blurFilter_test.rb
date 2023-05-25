require 'test_helper'

class BlurFilterTest < ActionView::TestCase
  include ImageHelper

  test "blur filter changes random image" do
    image = create_random_test_image(100, 100)
    blurrer = BlurFilter.new

    outputImage = blurrer.execute image

    assert_not_equal image_to_hash(image), image_to_hash(outputImage)
  end
end

