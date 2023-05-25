class SitesController < ApplicationController
  before_action :all_filters, only: [:index, :perform_filter]

  def index; end

  def perform_filter

    selectedFilters = []
    params[:selected_filters].each do |index, selected|
      next if selected == ""
      selectedFilters << @all_filters.select { |filter| filter::NAME == selected }.first.new
    end

    img = Magick::Image.from_blob(params[:image_file].read).first
    pipeline = ImagePipeline.new selectedFilters
    image = pipeline.execute img

    base64_image = Base64.encode64(image.to_blob)
    @data_url = "data:image/jpeg;base64,#{base64_image}"
  end

  private

  def all_filters
    @all_filters = [ThresholdFilter, SepiaFilter, BlurFilter, CharcoalFilter]
  end
end
