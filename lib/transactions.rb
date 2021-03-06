# frozen_string_literal: true

class Transaction
  attr_reader :credit, :debit, :balance, :date

  def initialize(credit, debit, balance, date = Time.now.strftime('%d/%m/%Y'))
    @credit = credit
    @debit = debit
    @balance = balance
    @date = date
  end
end
