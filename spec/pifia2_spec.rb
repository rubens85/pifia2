require './lib/Pifia2.rb'

describe Pifia2 do

    it "1234-1567" do
        pifia2 = Pifia2.new
        expect(pifia2.validarPica 1234, 1567).to eq "1"
    end

    it "1234-1567" do
        pifia2 = Pifia2.new
        expect(pifia2.validarFijas 1234, 1567).to eq "1"
    end

end