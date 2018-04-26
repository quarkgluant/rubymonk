def search(floor)
  floor.each do |row|
    row.each do |tile|
       return tile if tile == "jawbreaker" || tile == "gummy"
    end
  end
end
