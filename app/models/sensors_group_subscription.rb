class SensorsGroupSubscription < ApplicationRecord
  belongs_to :sensor
  belongs_to :sensors_group
end
