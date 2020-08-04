class Transfer
  # your code here
attr_accessor   :status, :sender, :reciever, :transfer_amount

  def initialize(transfer_amount)
    @sender = sender
    @reciever = reciever
    @status = "pending"
    @transfer_amount = transfer_amount
  end


def sender_valid?
  account.valid?
end

def reciever_valid?
account.valid?
end

def valid?(name)
  sender_valid?(name) && reciever_valid?(name)
end

end
