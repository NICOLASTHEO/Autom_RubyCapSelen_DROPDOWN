describe 'radio buttons', :radio do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end
    it 'select a button by ID' do
        choose('cap')
        sleep 1
    end

    it 'select a button by CSS' do
        find('input[value="guardians"]').click
    end
end