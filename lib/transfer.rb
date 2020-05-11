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
    if @sender.balance >= @amount 
      @sender.balance -= @amount
      @receiver.deposite += .
      @status = "complete"
    else
      "Transaction rejected. Please check your account balance."
    end
  end
end
