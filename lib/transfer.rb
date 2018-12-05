class Transfer
attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    receiver.balance #+= 50
    sender.balance #-= 50
    self.status=("complete")
  end
  
  
  
end
