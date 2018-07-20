class Tweeet < ApplicationRecord
  validates :tweeet, presence: true, length: {maximum: 280}
  belongs_to :user
end