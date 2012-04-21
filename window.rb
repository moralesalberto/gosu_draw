class Window < Gosu::Window

  def initialize
    super(800, 700, false)
    @rectangle = Rectangle.new(self, 30, 10, 100, 50)
  end

  def update

  end

  def draw
    @rectangle.draw
  end
end
