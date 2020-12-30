require 'test_helper'

class SensorsGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sensors_group = SensorsGroup.create(nome:"velocità")
    @user = User.create(nome:"Matteo1",email:"matteo1@gmail.com",password: "password")
  end

  test "should get index" do
    get sensors_groups_url
    assert_response :success
  end

  test "should get new" do
    sign_in_as(@user)
    get new_sensors_group_url
    assert_response :success
  end

  test "should create sensors_group" do
    sign_in_as(@user)
    assert_difference('SensorsGroup.count',1) do
      post sensors_groups_url, params: { sensors_group: { nome: "temperatura"} }
    end

    assert_redirected_to sensors_group_url(SensorsGroup.last)
  end

  test "should show sensors_group" do
    get sensors_group_url(@sensors_group)
    assert_response :success
  end

  test "should get edit" do
    sign_in_as(@user)
    get edit_sensors_group_url(@sensors_group)
    assert_response :success
  end

  test "should update sensors_group" do
    sign_in_as(@user)
    patch sensors_group_url(@sensors_group), params: { sensors_group: {  nome: @sensors_group.nome } }
    assert_redirected_to sensors_group_url(@sensors_group)
  end

  test "should destroy sensors_group" do
    sign_in_as(@user)
    assert_difference('SensorsGroup.count', -1) do
      delete sensors_group_url(@sensors_group)
    end

    assert_redirected_to sensors_groups_url
  end
end
