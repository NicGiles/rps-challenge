require 'capybara/rspec'


feature "The home page says" do
  scenario "go to home page" do
    visit("/")
    expect(page).to have_content "What is your name?"
  end

  scenario "go to home page" do
    visit("/")
    expect(page).to have_content "Sign in to play"
  end

  scenario "player is shown three options" do
    visit("/")
    fill_in("name", with: "Nic")
    click_button('Begin')
    expect(page).to have_content "Hi Nic! What's your move, Rock, Paper or Scissors?"
  end

  scenario "page should display the results" do
    visit("/")
    fill_in("name", with: "Nic")
    click_button('Begin')
    click_button('Draw!')
    expect(page).to have_content "Good game Nic. Here are the results!"
  end



end
