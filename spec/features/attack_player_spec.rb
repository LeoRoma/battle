feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'John attacked Tom'
  end

  scenario 'be attacked by Player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Tom attacked John'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Tom: 100HP'
    expect(page).to have_content 'Tom: 90HP'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'John: 100HP'
    expect(page).to have_content 'John: 90HP'
  end
end
