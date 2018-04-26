class Color
  attr_reader :r, :g, :b
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
    # your code here
    ( 299* @r + 587* @g + 114* @b ) / 1000 
  end

  def brightness_difference(another_color)
    #your code here
    (self.brightness_index - another_color.brightness_index).abs
  end

  def hue_difference(another_color)
    #your code here
    (another_color.r - @r).abs + (another_color.g - @g).abs + (another_color.b - @b).abs
  end

  def enough_contrast?(another_color)
    # your code here
    brightness_difference(another_color) > 125 && hue_difference(another_color) > 500
    
  end
end

## 2nde version
class Color
  attr_reader :r, :g, :b
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
    ( 299*@r + 587*@g + 114*@b) / 1000
  end

  def brightness_difference(another_color)
    (another_color.brightness_index - self.brightness_index).abs
  end

  def hue_difference(another_color)
    (another_color.r - self.r).abs + (another_color.g - self.g).abs + (another_color.b - self.b).abs
  end

  def enough_contrast?(another_color)
    brightness_difference(another_color) > 125 && hue_difference(another_color) > 500
  end
end

## Solution RubyMonk
class Color
  attr_reader :r, :g, :b
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
    (r*299 + g*587 + b*114) / 1000
  end

  def brightness_difference(another_color)
    (brightness_index - another_color.brightness_index).abs
  end

  def hue_difference(another_color)
    (r-another_color.r).abs +
    (g-another_color.g).abs +
    (b-another_color.b).abs
  end

  def enough_contrast?(another_color)
    brightness_difference(another_color) > 125 && hue_difference(another_color) > 500
  end
end


color1 = Color.new (42, 21, 58) 
color2 = Color.new (240, 41, 25)
