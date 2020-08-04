class Transfer
  # your code here
attr_accessor   :status, :sender, :receiver, :amount

  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

def valid?
  sender.valid? && receiver.valid?
end

def execute_transaction
 if  @sender.balance > @amount && valid? && @status == "pending"
   @sender.deposit(@amount * -1)
   @receiver.deposit (@amount)
   @status = "complete"

else
  @status == "rejected"
   "Transaction rejected. Please check your account balance."
end
end

def reverse_transfer
  if @status == "complete"
    @sender.deposit(@amount)
    @receiver.deposit (@amount * -1)
    @status = "reversed"
  end
end




end
