class SitesController < ApplicationController
  def index; end

  def perform_filter
    filter = BlurFilter.new
    image = filter.execute params[:image_file]
    base64_image = Base64.encode64(image.to_blob)
    @data_url = "data:image/jpeg;base64,#{base64_image}"
  end
end
