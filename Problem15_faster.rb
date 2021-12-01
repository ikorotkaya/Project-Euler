# def next_last_points(point, grid_width, grid_height)
#   points = []

#   if point.first < grid_width
#     points.push([point.first + 1, point.last])
#   end

#   if point.last < grid_height
#     points.push([point.first, point.last + 1])
#   end

#   return points
# end

# def are_we_done?(last_points, grid_width, grid_height)
#   last_points.all? do |x, y|
#     x == grid_width && y == grid_height
#   end
# end

# def count_paths(grid_width, grid_height)
#   current_paths_count = 1
#   last_points = [[0, 0]]

#   while !are_we_done?(last_points, grid_width, grid_height)
#     new_last_points = []
#     last_points.each do |point|
#       new_last_points += next_last_points(point, grid_width, grid_height)
#     end

#     last_points = new_last_points

#     puts last_points.size
#   end

#   return last_points.size
# end

# # puts count_paths(2, 2) # 6
# # puts count_paths(7, 7) # 6
# puts count_paths(20, 20) # X


def count_paths_for_square(width)
  (2 ** (width + 1) - 2 ** (width - 1)) / 2 + 2 ** (width - 1)
end

puts count_paths_for_square(2)
