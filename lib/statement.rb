# frozen_string_literal: true

require_relative './transactions'

class Statement
  def print_statement(transactions)
    @transactions = transactions
    columns
    print_transactions
  end

  private

  def columns
    print 'date || credit || debit || balance'
  end

  def print_transactions
    @transactions.each do |t|
      print "#{t.date} || #{format(t.credit)} || #{format(t.debit)} || #{format(t.balance)}\n"
    end
  end

  def format(amount)
    '%.2f' % amount
  end
end
