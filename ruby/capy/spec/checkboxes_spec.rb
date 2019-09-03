

describe 'Caixa de seleção' do

    before(:each) do
        visit '/checkboxes'
    end

    it 'marcando uma opção' do
        check('thor')
    end

    it 'desmarcando uma opção' do
        uncheck('antman')
    end

    it 'marcando com o find set true' do
        find('input[value=cap]').set(true)
    end

    it 'desmarcando com o find set false' do
        find('input[value=guardians]').set(false)
    end


    after(:each) do
        sleep 3
    end
end