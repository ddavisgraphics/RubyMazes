require './classes/grid'
require './classes/binary_tree'
require './classes/sidewinder'

grid = Grid.new(10,10);
Sidewinder.on(grid);
puts grid