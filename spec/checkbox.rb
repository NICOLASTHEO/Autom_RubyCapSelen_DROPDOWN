describe "select checkboxes", :checkbox do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'    
    end
    it 'marcando uma opção' do
        #find(id:'thor').click
        check('thor')
    end

    it 'desmarcando uma opção' do
        uncheck('antman')
    end
    #check and uncheck work with ID or NAME.
    #if we have just VALUE, we need to use FIND SET ...OR TRUE OR FALSE

    it 'manrcando com find set true' do
        find('input[value=cap]').set true
    end

    it 'desmarcando com find set false' do
        find('input[value=guardians]').set false
    end

end
#CMD TO RUN:  rspec spec/checkbox.rb --tag @checkbox
