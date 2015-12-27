class Sidewinder

    def self.on(grid)
        grid.each_row do |row|
            run = []

            row.each do |cell|
                run << cell
                at_eastern_boundry = (cell.east == nil)
                at_northern_boundry = (cell.north == nil)

                should_close_out = at_eastern_boundry || (!at_northern_boundry && rand(2) == 0)

                if should_close_out
                    member = run.sample
                    member.link(member.north) if member.north
                    run.clear
                else
                    cell.link(cell.east)
                end
            end
        end
        grid
    end
end


