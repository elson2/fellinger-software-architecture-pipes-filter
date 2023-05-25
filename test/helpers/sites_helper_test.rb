require 'test_helper'

class SitesHelperTest < ActionView::TestCase
  test "generation of filter options for select" do
    filters = [BlurFilter, SepiaFilter]
    expected_options = [
      [filters[0]::NAME, filters[0]::NAME],
      [filters[1]::NAME, filters[1]::NAME]
    ]

    assert_equal expected_options, all_filter_options(filters)
  end
end
