module ImageHelper
  def create_random_test_image(width, height)
    image = Magick::Image.new(width, height)

    # Generate random pixel values for each pixel in the image
    pixels = width * height
    random_pixels = Array.new(pixels) { [rand(256), rand(256), rand(256)] }.flatten

    # Set the pixel values of the image
    image.import_pixels(0, 0, width, height, 'RGB', random_pixels)

    image
  end

  def image_to_hash(img)
    pixels = []

    # Extract pixel values
    img.rows.times do |y|
      img.columns.times do |x|
        pixel = img.pixel_color(x, y)
        pixels << [pixel.red,
                   pixel.green,
                   pixel.blue]
      end
    end

    # Generate hash from pixel values
    pixel_string = pixels.flatten.join(',')
    hash = Digest::SHA256.hexdigest(pixel_string)

    return hash
  end
end
