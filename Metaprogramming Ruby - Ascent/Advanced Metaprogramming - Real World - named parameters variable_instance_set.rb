module BlindInitialize
  def initialize(h)
    h.each { |key, value| instance_variable_set("@#{key}", value) }
  end
end

class ErrorMessage
  attr_accessor :message, :status, :suggestion
  include BlindInitialize
end

class SuccessMessage
  attr_accessor :message, :status
  include BlindInitialize
end
