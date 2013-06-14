Given /^a user visits the signin page$/ do 
	visit signin_path
end

When /^he submits invalid signin information$/ do 
	click_button "Sign in"
end

Then /^he should see an error message$/ do
	expect(page).to have_selector('div.alert.alert-error')
end

Given /^the user has an account$/ do 
	@user = User.create(name: "Example User", email: "user@example.com", password: "foobar", password_confirmation: "foobar")
end

When /^the user submits valid signin information$/ do
	fill_in "Email", with: @user.email
	fill_in "Password", with: @user.password
	click_button "Sign in"
end

Then /^he should see his profile page$/ do 
	expect(page).to have_title(@user.name)
end

Then /^he should see a signout link$/ do 
	expect(page).to have_link('Sign out', href: signout_path)
end

Given /^a user visits the home page$/ do 
	visit root_path
end

Given /^click on the sign up button$/ do
	visit signup_path
end

When /^the user submits invalid signup information$/ do
	click_button "Create my account"
end

When /^the user submits valid signup information$/ do
	fill_in 'Name', :with => 'user1'
	fill_in 'Email', :with => 'user1@example.com'
	fill_in 'Password', :with => 'foobar'
	fill_in 'Confirmation', :with => 'foobar'
	click_button "Create my account"
end


