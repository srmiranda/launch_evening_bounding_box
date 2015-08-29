class BoundingArea
  attr_reader :boxes
  def initialize(boxes)
    @boxes = boxes.flatten
  end

  def boxes_contain_point?(x, y)
    result = false

    boxes.each do |box|
      if box.contains_point?(x, y)
        result = true
      end
    end
    result
  end

end
