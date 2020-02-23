# This class represents a Package based in a JSON file
class GameOfLife
  include ActiveModel::Model

  # Prints a grid based in the Game of Life, returns a array with the last
  #   iteration
  # returns if all cells are death or if no changes showed after iteration
  # @return [Array]
  def self.start_game!(grid, life_cycles = 1)
    state = nil
    (1..life_cycles).each do |_i|
      state = grid.map(&:dup)
      square = grid.length - 1
      (0..square).each do |vertical|
        (0..square).each do |horizontal|
          neighbors = 0
          ver_from = interacts_from vertical
          ver_to = interacts_to vertical, square
          hor_from = interacts_from horizontal
          hor_to = interacts_to horizontal, square

          (ver_from..ver_to).each do |ver_cell|
            (hor_from..hor_to).each do |hor_cell|
              next if vertical == ver_cell && horizontal == hor_cell

              neighbors += 1 if grid[ver_cell][hor_cell] == '*'
            end
          end
          if grid[vertical][horizontal] == '*' &&
             (neighbors < 2 || neighbors > 3)
            state[vertical][horizontal] = '.'
          elsif grid[vertical][horizontal] == '.' && neighbors == 3
            state[vertical][horizontal] = '*'
          end
        end
      end
      show_state(state)
      sleep 1
      break if grid == state || death_grid?(state)

      grid = state.map(&:dup)
    end
    state
  end

  # Returns from which neighbor iteract
  # @return Integer
  def self.interacts_from(cell)
    cell.zero? ? cell : cell - 1
  end

  # Returns until which neighbor iteract
  # @return Integer
  def self.interacts_to(cell, square)
    cell == square ? cell : cell + 1
  end

  # Prints grid to show cell activity
  # @return nil
  def self.show_state(grid)
    grid.each do |vertical|
      vertical.each do |cell|
        print cell
      end
      puts ''
    end
  end

  # Checks if every cell in grid is death
  # @return Boolean
  def self.death_grid?(grid)
    death_grid = true
    grid.each do |cell|
      death_grid = cell.select { |v| v == '*' }.empty?
      break unless death_grid
    end
    death_grid
  end
end
