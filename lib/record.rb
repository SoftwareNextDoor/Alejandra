require 'date'

class Record
  attr_accessor :concept, :date, :amount

  def initialize(concept = '', date = Date.today , amount = 8)
    @concept = concept
    @date = date
    @amount = amount
  end

end
