require 'spec_helper'

feature "signin", :type => :feature do
  background do
  end

  scenario "signs in" do
    alice = Fabricate(:user)
    sign_in(alice)
    expect(page).to have_content 'You are signed in'
  end
end