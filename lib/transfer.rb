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
end

def reverse_transfer
end


end
