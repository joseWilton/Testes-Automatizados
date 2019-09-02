

describe 'Ids Dinâmicos', :dinamico do

    before(:each) do
        visit '/access'
    end

    it 'cadastro' do
        # $ => termina com
        # ^ => começa com
        # * => contém

        find('input[id$=UsernameInput]').set 'fernando'
        find('input[id^=PasswordInput]').set '123456'
        find('a[id*=GetStartedButton]').click

        #expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'

        #realizando uma verificação sem utilizar textos como paramêtro
        expect(find('#result').visible?).to be true
    end
end