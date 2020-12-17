require 'test_helper'

class SensorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(id: 1,nome:"Matteo",email:"matteo@gmail.com",password: "sadaasd")
    @sensor = Sensor.create(mac: "3D:F2:C9:A6:B3:2F",url: "b", tipo: "a",  latitudine: "asd", longitudine: "asda", unit_misura: "sad", public: false, downtime_to_alarm: "2020-12-14 15:31:53", last_firmware_update: "2020-12-14",user_id: 1)
 
  end

  test "should get index" do
    get sensors_url
    assert_response :success
  end

  test "should get new" do
    get login_path
    assert_response :success
  end

  #test "should create sensor" do
    #assert_difference('Sensor.count',1) do
      #post sensors_url, params:{sensor: {mac: '3D:F2:C1:A3:C3:2F',url: 'bb', tipo: 'aa',  latitudine: 'asda', longitudine: 'asdaa', unit_misura: 'sada', public: false, downtime_to_alarm: '2020-12-14 15:32:53', last_firmware_update: '2020-13-14',user_id: 1} }
    #end

    #assert_redirected_to sensor_url(Sensor.last)
  #end

  test "should show sensor" do
    get sensor_url(@sensor)
    assert_response :success
  end

  #test "should get edit" do
    #get edit_sensor_url(@sensor)
    #assert_response :success
  #end

  #test "should update sensor" do
    #patch sensor_url(@sensor), params: { sensor: { downtime_to_alarm: @sensor.downtime_to_alarm, last_firmware_update: @sensor.last_firmware_update, latitudine: @sensor.latitudine, longitudine: @sensor.longitudine, mac: @sensor.mac, public: @sensor.public, tipo: @sensor.tipo, unit_misura: @sensor.unit_misura, url: @sensor.url, user_id: @sensor.user_id } }
    #assert_redirected_to sensor_url(@sensor)
  #end

  #test "should destroy sensor" do
    #assert_difference('Sensor.count', -1) do
      #delete sensor_url(@sensor)
    #end

    #assert_redirected_to sensors_url
  #end
end
