class Carro
    attr_accessor :nome

    def ligar
        puts 'O carro esta pronta para andar'

    end
end

honda = Carro.new

honda.nome = 'Hb20'

puts honda.nome