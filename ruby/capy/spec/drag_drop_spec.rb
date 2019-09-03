

describe 'Drag and Drop', :drop do

    before(:each) do
        visit '/drag_and_drop'
    end

    it 'homem aranha pertence ao time stark' do

        cap   = find('.team-cap .column')
        stark = find('.team-stark .column')
        
        spiderman = find('img[alt$=Aranha]') #utilizando rgex
        spiderman.drag_to stark

        expect(stark).to have_css 'img[alt$=Aranha]'
        expect(cap).not_to have_css 'img[alt$=Aranha]'

    end

end