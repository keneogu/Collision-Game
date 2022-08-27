require 'ruby2d'

set background: 'white'
set width: 1200
set height: 800

class Box
	def initialize
		@x = rand(Window.width)
		@y = rand(Window.height)
		@x_velocity = (-5..5).to_a.sample
		@y_velocity = (-5..5).to_a.sample
		@color = Color.new('random')
	end

	def draw
		Square.new(x: @x, y: @y, size: 15, color: @color)
	end
end

$boxes = Array.new(30) {Box.new}

update do
	clear
end

show
