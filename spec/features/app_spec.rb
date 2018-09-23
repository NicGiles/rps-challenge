require 'capybara/rspec'
require 'web_helpers'


  feature "The home page says" do
    scenario "go to home page" do
      visit("/")
      expect(page).to have_content "What is your name?"
  end

    scenario "go to home page" do
      visit("/")
      expect(page).to have_content "Sign in to play"
  end

  feature "The play page says" do
    scenario "player is shown three options" do
    sign_in_and_play
      expect(page).to have_content "Hi Nic! What's your move, Rock, Paper or Scissors?"
  end

  feature "The results page says" do
    scenario "The results page should display the results" do
    sign_in_and_play
      click_button('Draw!')
      expect(page).to have_content "Well played"
    end


    feature "Play again 'yes' should allow user to play again" do
      scenario "Play again? Yes, returns user to RPS options" do
      sign_in_and_play
      click_button('Draw!')
      click_button('✅')
      expect(page).to have_content "Hi Nic! What's your move, Rock, Paper or Scissors?"
    end
  end
end
end
end
