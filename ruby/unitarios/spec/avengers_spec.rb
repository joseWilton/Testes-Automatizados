 class AvengersHeadQuarter
     attr_accessor :list

     def initialize
         self.list = []
     end

     def put(avenger)
         self.list.push(avenger)
     end
 end
 
 describe AvengersHeadQuarter do
    
    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new
        
        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
    end

    it 'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        res = hq.list.size > 0
        expect(res).to be true #verifica se a afirmação de que a lista é maior que zero é verdadeira
        expect(hq.list.size).to be > 0 #verifica se a lista possui dados
        expect(hq.list).to include 'Hulk'  #include verifica se o valor existe dentro do comparador

    end

    it 'Thor deve ser o primeiro da lista' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        expect(hq.list).to start_with('Thor')
    end

    it 'Ironman deve ser o ultimo da lista' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')

        expect(hq.list).to end_with('Ironman')
    end

    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Parker/) # verificando se possui o sobrenome com expressão regular
        expect(avenger).not_to match(/Souza/)
    end
 
end