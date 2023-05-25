module SitesHelper
  def all_filter_options(filters)
    filters.map { |f| [f::NAME, f::NAME] }
  end
end
