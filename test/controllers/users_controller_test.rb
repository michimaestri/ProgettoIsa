require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(nome:"Matteo1",email:"matteo1@gmail.com",password: "sadaasdsss")
    
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get registrati_path
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count',1) do
      post users_url, params: { user: {nome: 'Matteo',email: 'matteo@gmail.com',password: 'sadaasd' } }
      
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: {email: @user.email, nome: @user.nome } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
