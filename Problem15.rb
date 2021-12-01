def next_paths(path, grid_width, grid_height)

  last_point = path.last
  last_point_x = last_point[0]
  last_point_y = last_point[1]

  paths = []

  if last_point_x < grid_width
    next_path_1 = path + [[last_point_x + 1, last_point_y]]
    paths.push(next_path_1)
  end

  if last_point_y < grid_height
    next_path_2 = path + [[last_point_x, last_point_y + 1]]
    paths.push(next_path_2)
  end

  if paths.empty?
    return [path]
  end

  return paths
end

#p next_paths([[0, 0], [1, 0]], 2, 2)

def are_we_done?(paths, grid_width, grid_height)
  found_paths = []

  paths.each do |path|

    last_point = path.last
    last_point_x = last_point[0]
    last_point_y = last_point[1]

    if last_point_x != grid_width || last_point_y != grid_height
      return false
    end

  end

  return true # true / false

end


def count_paths(grid_width, grid_height)

  paths = [[[0, 0]]]

  while !are_we_done?(paths, grid_width, grid_height)
    new_paths = []

    paths.each do |path|
      new_paths += next_paths(path, grid_width, grid_height)
      # p new_paths
    end

    paths = new_paths
  end

  return paths.size
end

# puts count_paths(2, 2) # 6
# puts count_paths(7, 7) # 6
puts count_paths(20, 20) # X
