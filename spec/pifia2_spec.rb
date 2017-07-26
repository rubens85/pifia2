require './lib/Pifia2.rb'

describe Pifia2 do

    it "13104-39999" do
        pifia2 = Pifia2.new
        expect(pifia2.validarPica 13104, 31339).to eq 5
    end

    it "1234-1567" do
        pifia2 = Pifia2.new
        expect(pifia2.validarFijas 1237, 1537).to eq 3
    end

    it "generarNumero...." do
        pifia2 = Pifia2.new
        expect(pifia2.generarNumero 1).to eq 10000..99999
    end

end