class Spy
  # Write your code here
  def method_missing(sym, *args, &block)
    if block_given?
      puts "called #{sym} with #{args.join(', ')} and #{block}" unless args.empty?
      puts "called #{sym} and #{block}" if args.empty?
    else
      puts "called #{sym} with #{args.join(', ')}" unless args.empty?
      puts "called #{sym}" if args.empty?
    end
  end
end
