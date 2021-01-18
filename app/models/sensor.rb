class Sensor < ApplicationRecord
  has_one_attached :image,:dependent => :destroy
  belongs_to :user
  belongs_to :sensors_group
  has_many :misurations, dependent: :destroy
  validates :mac, presence: true,	format: { with: /\A([0-9A-F]{2}[:-]){5}([0-9A-F]{2})\z/ , message: "mac regex control not passed" }
  validates :latitudine, presence: true
  validates :longitudine, presence: true
  validates :unit_misura, presence: true
  validates :downtime_to_alarm, presence: true
  validates_uniqueness_of :mac, :messages=>"Mac unico"
end
