require './lib/record'

describe Record do

  describe %| Default values | do
    before{ Date.stub today: Date.today }
    its( :concept ){ should eq '' }
    its( :date    ){ should eq Date.today }
    its( :amount  ){ should eq 8 }
  end

end
