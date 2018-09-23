

def sign_in_and_play
visit("/")
  fill_in("name", with: "Nic")
  click_button('Begin')
end
