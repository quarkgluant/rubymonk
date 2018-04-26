class Spy
  # Write your code here
  def method_missing(sym)
    puts "called #{sym}"
  end
end
