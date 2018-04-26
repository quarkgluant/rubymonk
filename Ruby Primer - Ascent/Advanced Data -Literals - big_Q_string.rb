def big_q_string(numerator, denominator)
  %Q(This %Q syntax is the ugliest one.\n#{numerator} out of #{denominator} \"dentists\" agree.)
end

