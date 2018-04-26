class Monk
  # put your code here
  ["life", "the_universe", "everything"].each do |thing|
    define_method("meditate_on_#{thing}") do
      "I know the meaning of #{thing.gsub('_', ' ')}" 
  	end
  end
end