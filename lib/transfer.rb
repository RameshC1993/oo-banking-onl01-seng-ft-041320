class Transfer
  attr_accessor :transfer, :sender, :receiver, :status, :transfer_amount
  
  def initialize(transfer, sender, receiver)
    @transfer = transfer
    @sender = sender
    @receiver = receiver
    # @status = "pending"
    # @transfer_amount = transfer_amount
  end
end
