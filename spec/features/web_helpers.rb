def sign_up_helper
  visit('/')
  click_link('Sign up')
  fill_in('user_email', with: 'testemail@gmail.com')
  fill_in('user_password', with: 'password1234')
  fill_in('user_password_confirmation', with: 'password1234')
  click_button('Sign up')
end

def add_item
  click_link 'New Item'
  attach_file('item[image]', File.join(Rails.root + 'spec/fixtures/clueless.jpg'))
  select 'blue', from: 'item[colour]'
  click_button 'Create Item'
end
