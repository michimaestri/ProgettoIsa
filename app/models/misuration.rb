class Misuration < ApplicationRecord
	validates :mac, presecence: true
	validates :value, presecence: true
	validates :unit, presecence: true
	belongs_to :sensors
end
