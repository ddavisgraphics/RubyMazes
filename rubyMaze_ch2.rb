require './classes/grid'
require './classes/binary_tree'
require './classes/sidewinder'


grid = Grid.new(40,40);
Sidewinder.on(grid);

img = grid.to_png
img.save "testMaze.png"