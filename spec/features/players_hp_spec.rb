feature 'view hp' do
  scenario 'a player can see his own hp' do
    sign_in_and_play
    expect(page).to have_content 'Tom: 100HP'
  end

  scenario 'a player can see his own hp' do
    sign_in_and_play
    expect(page).to have_content 'John: 100HP'
  end
end
