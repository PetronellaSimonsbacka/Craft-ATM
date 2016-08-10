class Account
  attr_accessor :balance, :account_status, :pin_code, :exp_date, :owner

  def initialize(attrs = {})
    @balance = 50
    @account_status = :active
    @pin_code = '1234'
    @exp_date = set_expiry_date
    set_owner(attrs[:owner])
  end

  def deactivate
    @account_status = :deactivated
  end

  private

  def set_expiry_date
    Date.today.next_year(5).strftime("%m/%y")
  end

  def set_owner(obj)
    obj == nil ?  missing_owner : @owner = obj
  end

  def missing_owner
    raise "An Account owner is required"
  end
end
