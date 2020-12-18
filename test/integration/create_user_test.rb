require 'test_helper'

class CreateUserTest < ActionDispatch::IntegrationTest
 setup do
 	@user = User.create(nome:"Matteo1",email:"matteo1@gmail.com",password: "sadaasdsss")
 end

 test "/users/new" do
 	get "/registrati"
 	assert_response :success
 	assert_difference 'User.count', 1 do
 		post users_path, params: { user:{nome:"Matteo2",email:"matteo2@gmail.com",password: "s"}}
 		assert_response :redirect
 	end
 	follow_redirect!
 	assert_response :success
 	assert_match "Profilo di", response.body
 end

 test "reject new user" do
    get "/registrati"
    assert_response :success
    assert_no_difference 'User.count' do
    post users_path, params: { user:{nome:"",email:"matteo2@gmail.com",password: "s"}}
    end		
    assert_match "errors", response.body
    assert_select 'div.alert'
    assert_select 'h4.alert-heading'
  end
	

end
