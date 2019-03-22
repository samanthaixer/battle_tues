feature 'display player names' do
  scenario 'when names are submitted they are displayed' do
    sign_in_and_play
    expect(page).to have_text "Sam"
    expect(page).to have_content('Kim')
  end
end

feature 'view hit points' do
  scenario 'player 1 views player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content("Kim HP: 60/60")
  end
end
