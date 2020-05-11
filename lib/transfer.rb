class Transfer
  attr_accessor :transfer, :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
    @transfer = transfer
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = 50
  end
  
  def valid?
    if @sender.valid? && @receiver.valid? 
      return true 
    else
      return false
    end
  end
  
  def execute_transaction 
    if @status == "complete"
      return return "Transaction rejected. Please check your account balance."
    end
    if !@receiver.valid?
      @status = "rejected"
    end
    if @sender.balance >= @amount
      @sender.deposit(-@amount)
      @receiver.deposit(@amount)
      @status = "complete"
      
    end
  end
end
