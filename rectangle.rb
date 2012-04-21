class Rectangle
  def initialize(window, x, y, width, height)
    @window = window
    @x = x
    @y = y
    @width = width
    @height = height
    @layer = 1
    @thickness = 3
    @color = Gosu::Color::WHITE 
  end

  def draw
    draw_rect(@x, @y, @width, @height, @color, @layer) 
  end

  def draw_rect(x1, y1, x2, y2, thickness, color, layer)
    @window.draw_quad(x1,y1,color,x2,y2, color,x1,y1+thickness,color,x2,y2+thickness,color,layer)
  end

  def draw_rect(x, y, w, h, color, layer)
    @window.draw_quad(x, y, color, x+w, y, color, x, y+h, color, x+w, y+h, color, layer)
  end
end
