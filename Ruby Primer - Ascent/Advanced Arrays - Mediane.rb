
def median(*list)
  return nil if list.length == 0
  return list[0] if list.length == 1
  list.sort!
  if list.length.even?
    (list[(list.length/2 -1)] + list[(list.length/2)]) / 2.0
  else
    list[(list.length - 1)/2] 
  end
end

## Solution RubyMonk
def median(*list)
  return nil if list.empty?
  
  mid = list.length / 2
  slist = list.sort
  
  if slist.length.odd?
    slist[mid]
  else
    (slist[mid - 1] + slist[mid]).to_f / 2.0
  end
end