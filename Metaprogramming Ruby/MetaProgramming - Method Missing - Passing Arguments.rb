class Spy
  # Write your code here
  def method_missing(sym, *args)
    puts "called #{sym} with #{args.join(', ')}" unless args.empty?
    puts "called #{sym}" if args.empty?
  end
end
