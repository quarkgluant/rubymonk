class Monk
end
Monk.instance_eval("def sum; 49; end")
# define a class method 'sum' on Monk using instance_eval
# that returns 49.