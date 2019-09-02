

describe 'Tabelas', :tabs do
    
    before(:each) do
        visit 'tables'
    end

    it 'deve exibir o salario do stark', :stark do
        
        atores = all('table tbody tr')
        
        stark = atores.detect {|ator| ator.text.include?('Robert Downey Jr')}

        expect(stark.text).to include '10.000.000'
    end
    
    it 'deve exibir o salario do vin diesel', :vin do
        diesel = find('table tbody tr', text: '@vindiesel')
        expect(diesel).to have_content '10.000.000'
    end

    it 'deve exibir o filme velozes', :velozes do
        
        diesel = find('table tbody tr', text: '@vindiesel')
        movie = diesel.all('td')[2].text

        expect(movie).to eql 'Velozes e Furiosos'
    end

    it 'deve selecionar chris prat para remoção' do
        
        prat = find('table tbody tr', text: 'Chris Prat')
        prat.find('a', text: 'delete').click

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
    end
end