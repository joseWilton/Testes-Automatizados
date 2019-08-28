
def Login (usuario, senha)
    visit 'https://training-wheels-protocol.herokuapp.com/login'

    fill_in 'userId', with: usuario
    fill_in 'password', with:senha

    click_button 'Login'
end
 
describe 'Forms' do

    it 'login com sucesso' do
       
        Login('stark', 'jarvis!')

        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end

    it 'login com senha incorreta' do

        Login('stark', 'teste')

        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'Senha é invalida!'

    end

    it 'login com usuário não cadastrado' do
        
        Login('teste', 'teste')

        expect(find('#flash').visible?).to be true

        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'

    end

 end 