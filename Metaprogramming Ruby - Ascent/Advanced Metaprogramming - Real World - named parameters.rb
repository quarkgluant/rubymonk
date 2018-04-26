class ErrorMessage
  attr_accessor :message, :status, :suggestion
  
	def initialize(h)
      @message = h[:message]
      @status = h[:status]
      @suggestion = h[:suggestion]
  end
end