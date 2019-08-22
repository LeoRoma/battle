feature 'Enter names' do
  scenario 'A player can insert his name' do
    visit('/')
    fill_in :player_1_name, with: 'John'
    fill_in :player_2_name, with: 'Tom'
    click_button 'Submit'
    expect(page).to have_content 'John vs. Tom'
  end
end
