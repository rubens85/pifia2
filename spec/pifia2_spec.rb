require './lib/Pifia2'

describe Pifia2 do
    it "1234-1567" do
        pifia2 = Pifia2.new
        expect(pifia2.validarPica).to eq "1"
    end

end