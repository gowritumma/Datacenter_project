class Country < ApplicationRecord
  belongs_to :language
  validates :name, presence: true
end
