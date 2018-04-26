AN_OBJECT = Object.new

def AN_OBJECT.methods_added
  @@methods_added ||= []
end

def AN_OBJECT.singleton_methods_added
  @@singleton_methods_added ||= []
end

def AN_OBJECT.singleton_method_added(method_name)
  singleton_methods_added << method_name
end
def AN_OBJECT.method_added(method_name)
  methods_added << method_name
end
