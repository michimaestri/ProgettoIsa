class SensorsGroup < ApplicationRecord
  has_many :sensors, through: :sensors_group_subscriptions
  has_many :sensors_group_subscriptions
  validates :nome,presence: true,length: {minimum: 3,maximum: 25}
  validates_uniqueness_of :nome
end
