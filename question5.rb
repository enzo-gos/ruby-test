module Enumerable
  def custom_map
    result = []
    each { |element| result << yield(element) }
    result
  end
end
