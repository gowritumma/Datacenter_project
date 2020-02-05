class Datacenter < ApplicationRecord
  belongs_to :country
  validates :code, presence: true
  validates :code, uniqueness: true
  validates :servers_available, numericality: { greater_than: 0 }
  validates :servers_capacity, numericality: { greater_than: 0 }
end
