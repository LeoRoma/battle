feature 'Attacking' do
  scenario 'Player 1 can attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'John attacked Tom'
  end
end
