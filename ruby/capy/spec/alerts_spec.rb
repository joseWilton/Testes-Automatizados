

describe 'Alertas de JS', :alert do

    before (:each) do
        visit '/javascript_alerts'
    end

    it 'alerta' do
        
        click_button 'Alerta'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
        sleep 3
    end

    it 'sim confirma' do
        
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'


    end

    it 'não confirma' do
        
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'

    end

    it 'accept prompt', :accept do
        
        accept_prompt(with: 'Fernando') do
            click_button 'Prompt'    
        end
        expect(page).to have_content "Olá, Fernando"
    end

    it 'dismiss prompt', :dismiss do
        
        dismiss_prompt() do
            click_button 'Prompt'    
        end
        expect(page).to have_content "Olá, null"

    end
end