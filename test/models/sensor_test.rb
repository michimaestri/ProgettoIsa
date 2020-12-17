require 'test_helper'

class SensorTest < ActiveSupport::TestCase
	 def setup
		@user = User.create(id: 1,nome:"Matteo",email:"matteo@gmail.com",password: "sadaasd")
   	@sensor = Sensor.new(mac: "3D:F2:C9:A6:B3:4F",url: "b", tipo: "a",  latitudine: "asd", longitudine: "asda", unit_misura: "sad", public: false, downtime_to_alarm: "2020-12-14 15:31:53", last_firmware_update: "2020-12-14",user_id: 1)
   end	

	test "Sensore valido" do
   		assert @sensor.valid?
	end

	test "Mac non valido" do
		@sensor.mac="abc"
		assert_not @sensor.valid?
	end

	test "Mac unico" do
		@sensor1 = Sensor.new(mac: "3D:F2:C9:A6:B3:4F",url: "b", tipo: "a",  latitudine: "asd", longitudine: "asda", unit_misura: "sad", public: false, downtime_to_alarm: "2020-12-14 15:31:53", last_firmware_update: "2020-12-14",user_id: 1)
		@sensor.save
		assert_not @sensor1.save
	end

	test "Mac non presente" do
		@sensor.mac=""
		assert_not @sensor.valid?
	end

	test "Latitudine non presente" do
		@sensor.latitudine=""
		assert_not @sensor.valid?
	end

	test "Longitudine non presente" do
		@sensor.longitudine=""
		assert_not @sensor.valid?
	end

	test "Unità di misura non presente" do
		@sensor.unit_misura=""
		assert_not @sensor.valid?
	end

	

end
