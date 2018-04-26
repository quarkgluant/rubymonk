def inspect_instance_variable(class_name, variable)
  Module.const_get(class_name).new.instance_variable_get("@" + variable)
end

## 2nde solution ##
def inspect_instance_variable(class_name, variable)
  Module.const_get(class_name).new.instance_variable_get(%Q(@#{variable}))
end