class Transfer
  # your code here
attr_accessor   :status, :sender, :reciever, :transfer_amount

  def initialize(transfer_amount)
    @sender = sender
    @reciever = reciever
    @status = "pending"
    @transfer_amount = transfer_amount
  end


end
