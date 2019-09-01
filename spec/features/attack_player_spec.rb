feature 'Attacking' do
  scenario 'Reduce Player 2 hp by 10' do
    sign_in_and_play
    click_button 'Attack'
    # click_link 'Ok'
    expect(page).not_to have_content 'Tom: 100HP'
    expect(page).to have_content 'Tom: 90HP'
  end
end
