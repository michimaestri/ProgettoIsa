class Misuration < ApplicationRecord
	validates :mac, :value, :unit, presence: true
	validates :value, numericality: true
	validate :mac_presence
  belongs_to :sensor

	def mac_presence
    	if Sensor.exists?(:mac => self.mac)
        	self.sensor_id= Sensor.find_by(mac: self.mac).id
    	end
	end
end