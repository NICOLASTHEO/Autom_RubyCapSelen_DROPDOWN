describe 'Caixa de Seleção', :dropdown do
    it 'seleção de item simples' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Bucky', from: 'dropdown')
    end

    it 'buscando item específico com FIND' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop=find('.avenger-list')
        drop.find('option', text: 'Natasha Romanoff').select_option     
    end

    it 'qualquer item', :sample do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop=find('.avenger-list')
        drop.all('option').sample.select_option
        sleep 1
    end
end

#cmd to runrspec spec/dropdown.rb --tag @dropdown