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
		@square = Square.new(x: @x, y: @y, size: 15, color: @color)
	end

	def move
		@x = (@x + @x_velocity) % Window.width
		@y =( @y + @y_velocity) % Window.height
	end

	def check_for_collisions
		if @square && collision_detected?
			@x_velocity = -@x_velocity
			@y_velocity = -@y_velocity
		end
	end
end

$boxes = Array.new(30) {Box.new} 

update do
	clear
	$boxes.each do |box|
		box.draw
		box.move
	end
end

show
