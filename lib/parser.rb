module Parser

  def parse(string)
    string.match(/(.*)\n(.*)\n(.*)/) do |md|
      @concept  = md[1]
      @date     = Date.send md[2]
      @amount   = md[3]
    end
  end

end
