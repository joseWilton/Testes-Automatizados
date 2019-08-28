

describe 'Teclado', :key do

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/key_presses'        
    end

    it 'enviando telclas' do

        teclas = %i[tab escape space enter control alt]

        teclas.each do |tecla|

            find('#campo-id').send_keys tecla
            expect(page).to have_content 'You entered: '+ tecla.to_s.upcase
        end
        
        
    end
    
end