class Object
  def dbg(o)
    puts o.inspect
    o
  end
end

def order(food)
  dbg(deliver(dbg(prepare(food))))
end
