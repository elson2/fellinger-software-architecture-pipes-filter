module IFilter
  FILTER = ""
  def execute
    raise Exception.new "This method should be overwritten"
  end
end
