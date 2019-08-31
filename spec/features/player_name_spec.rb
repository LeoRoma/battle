feature 'Enter names' do
  scenario 'A player can insert his name' do
    sign_in_and_play
    expect(page).to have_content 'John vs. Tom'
  end
end
