require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
   	@user = User.new(nome:"Matteo",email:"matteo@gmail.com",password: "sadaasd")

   end

   test "Utente valido" do 
   	assert @user.save
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
