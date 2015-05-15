class Array
  def deep_dup
    map do |el|
      el.is_a? Array ? el.deep_dup : el
    end
  end
end
