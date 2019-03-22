feature 'attack' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Sam attacked!")
  end
end

feature 'reducing points after attack' do
  scenario 'after receiving an attack, Player 2 HP are reduced by 10' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Kim HP: 50/60")
  end
end

feature 'multiplayer updating points after 2nd attack' do
  scenario 'after receiving an attack, Player 2 HP are reduced by 10' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Kim HP: 50/60")
    click_button "Attack"
    expect(page).to have_content("Sam HP: 50/60")
  end
end

feature 'message changes after 2nd attack' do
  scenario 'after receiving an attack, Player 2 HP are reduced by 10' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Sam attacked!")
    click_button "Attack"
    expect(page).to have_content("Kim attacked!")
  end
end
