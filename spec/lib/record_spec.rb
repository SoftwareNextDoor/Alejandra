require './lib/record'

describe Record do
  before{ Date.stub today: Date.today }

  describe %| Default values | do
    its( :concept ){ should eq '' }
    its( :date    ){ should eq Date.today }
    its( :amount  ){ should eq 8 }
  end

  describe %| Build from string (parsing) | do
    let(:input){ %|Concept at the first line.\ntoday\n8| }

    subject{ Record.new input }

    its( :concept ){ should eq 'Concept at the first line.' }
    its( :date    ){ should eq Date.today }
    its( :amount  ){ should eq '8' }
  end

end
