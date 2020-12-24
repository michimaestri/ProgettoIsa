class Sensor < ApplicationRecord
  belongs_to :user
  validates :mac, presence: true,	format: { with: /\A([0-9A-F]{2}[:-]){5}([0-9A-F]{2})\z/ , message: "mac regex control not passed" }
  validates :latitudine, presence: true
  validates :longitudine, presence: true
  validates :unit_misura, presence: true
  validates_uniqueness_of :mac, :messages=>"Mac unico"
  has_many :misurations, dependent: :destroy
  has_many :sensors_group, through: :sensors_group_subscriptions
  has_many :sensors_group_subscriptions
end
