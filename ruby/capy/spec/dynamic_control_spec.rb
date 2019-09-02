

describe 'Dynamic Control', :dc do

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/dynamic_controls'
    end

    it 'quando habilita o campo' do
        
        res = page.has_field? 'movie', disabled: true 
        puts res

        click_button 'Habilita'

        res = page.has_field? 'movie', disabled: false 
        
    end
end