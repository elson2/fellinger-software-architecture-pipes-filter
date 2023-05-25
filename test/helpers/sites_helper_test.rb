require 'test_helper'

class SitesHelperTest < ActionView::TestCase
  include ImageHelper

  test "generation of filter options for select" do
    filters = [BlurFilter, SepiaFilter]
    expected_options = [
      [filters[0]::NAME, filters[0]::NAME],
      [filters[1]::NAME, filters[1]::NAME]
    ]

    assert_equal expected_options, all_filter_options(filters)
  end

  test "random image of correct size is generated" do
    image = create_random_test_image(100, 100)

    expectedWidth = 100
    expectedHeight = 100

    assert_equal image.columns, expectedWidth
    assert_equal image.rows, expectedHeight
  end
end
