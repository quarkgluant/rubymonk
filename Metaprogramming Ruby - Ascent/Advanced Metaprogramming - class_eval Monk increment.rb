class Monk
end

Monk.class_eval { def initialize; @zen = 41; end }
# define 'zen' using class_eval
Monk.class_eval { def zen; @zen += 1; end }
