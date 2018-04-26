class Monk
  ["life", "the_universe", "everything"].each do |action|
    define_method("meditate_on_#{action}") do
      "I know the meaning of #{action.gsub(/_/," ")}"
    end
  end
end

## other solution
class Monk
  %w(meditate_on_life meditate_on_the_universe meditate_on_everything).each do |action|
    define_method(action) do
      "I know the meaning of #{action.gsub('meditate_on_', '').gsub('_', ' ')}"
    end
  end
end
