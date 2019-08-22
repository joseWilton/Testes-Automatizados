class Veiculo
    attr_accessor :nome, :marca, :modelo
    
    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "ligando o #{nome}"
    end

    def abastecer
        puts "Abastecendo #{nome}"
    end
end

class Carro < Veiculo
    def dirigir
        puts "Dirigindo o #{nome}"
    end    
end

class Moto < Veiculo
    def pilotar
        puts "Pilotando a #{nome}"
    end
end


moto = Moto.new('xt900','honda','XT')
carro = Carro.new('Monza','Towota','Antigo')

moto.abastecer
carro.ligar