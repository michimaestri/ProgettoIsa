require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
   	@user = User.new(nome:"Matteo",email:"matteo@gmail.com",password: "sadaasd")

   end

   test "Utente valido" do 
   	assert @user.save
   end

   test "Nome unico" do
    @user1 = User.new(nome:"Matteo",email:"matteo123@gmail.com",password: "22113sadaasd")
    @user.save
    assert_not @user1.save
   end

   test "email unica" do
    @user1 = User.new(nome:"Matteo123",email:"matteo@gmail.com",password: "2211232133sadaasd")
    @user.save
    assert_not @user1.save
   end

   test "Nome presente" do 
   	@user.nome =""
   	assert_not @user.valid?
   end

   test "Nome corto" do 
   	@user.nome = "aa"
   	assert_not @user.valid?
   end

   test "Nome lungo" do 
   	@user.nome = "a"*26
   	assert_not @user.valid?
   end

   test "Email presente" do 
   	@user.email =""
   	assert_not @user.valid?
   end

end
