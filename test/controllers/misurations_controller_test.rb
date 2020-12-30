require 'test_helper'

class MisurationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(nome:"Matteo",email:"matteo@gmail.com",password: "password")
    @sensors_group = SensorsGroup.create(nome:"velocità")
    @sensor = Sensor.create(mac: "3D:F2:C9:A6:B3:2F",url: "b", tipo: "a",  latitudine: "asd", longitudine: "asda", unit_misura: "sad", public: true, downtime_to_alarm: "2020-12-14 15:31:53", last_firmware_update: "2020-12-14",user_id: @user.id, sensors_group_id: @sensors_group.id)
    @misuration=Misuration.create(mac: "3D:F2:C9:A6:B3:2F", value: "123", unit:"fd", sensor_id: @sensor.id)
  end

  #test "should get index" do
    #sign_in_as(@user)
    #get misurations_url
    #assert_response :success
  #end



  #test "should create misuration" do
    #assert_difference('Misuration.count') do
      #post misurations_url, params: { misuration: { mac: @misuration.mac, unit: @misuration.unit, value: @misuration.value } }
    #end

    #assert_redirected_to misuration_url(Misuration.last)
   #end

  test "should show misuration" do
    sign_in_as(@user)
    get misuration_url(@misuration)
    assert_response :success
  end



  test "should destroy misuration" do
    sign_in_as(@user)
    assert_difference('Misuration.count', -1) do
      delete misuration_url(@misuration)
    end

    assert_redirected_to misurations_url
  end
end
