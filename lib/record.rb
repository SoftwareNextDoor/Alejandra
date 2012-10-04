require 'date'
require 'parser'

class Record
  include Parser

  attr_reader :concept, :date, :amount

  def initialize(attributes = {})
    return parse(attributes) if attributes.is_a?(String)

    @concept = attributes.fetch :concept, ''
    @date    = attributes.fetch :date   , Date.today
    @amount  = attributes.fetch :amount , 8
  end

end
