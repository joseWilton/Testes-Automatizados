

describe 'Caixa de opções' do
    
    it 'item do select simples' do
        
        visit '/dropdown'

        select('Loki', from: 'dropdown')
    
    end

    it 'item especifico com o find' do
        
        visit '/dropdown'
        
        seletor = find('.avenger-list')
        seletor.find('option', text: 'Bucky').select_option
    end

    it 'escolhendo um item aleatorio no select' do
    
        visit '/dropdown'
        seletor = find('.avenger-list')
        seletor.all('option').sample.select_option

    end

end