feature 'Game over' do
  context 'when Player 1 reaches 0 HP first' do
    before do
      sign_in_and_play
      attack_and_confirm
      allow(Kernel).to receive(:rand).and_return(100)
    end

  #   scenario 'Player 1 loses' do
  #     click_button 'Attack'
  #     # expect(page).not_to have_content 'Tom attacked John'
  #     expect(page).to have_content 'John loses!'
  #   end
  end
end
