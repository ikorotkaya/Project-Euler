def loud_each(array)
  puts "--> I'M DOING SOMETHIIIIIING"

  array.each do |el|
    puts yield(el)
  end
end
