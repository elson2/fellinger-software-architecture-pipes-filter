class SitesController < ApplicationController
  def index; end

  def perform_filter
    filters = [ThresholdFilter.new, SepiaFilter.new, BlurFilter.new]
    pipeline = ImagePipeline.new filters

    img = Magick::Image.from_blob(params[:image_file].read).first
    image = pipeline.execute img
    base64_image = Base64.encode64(image.to_blob)
    @data_url = "data:image/jpeg;base64,#{base64_image}"
  end
end
