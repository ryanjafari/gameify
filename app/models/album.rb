class Album < ActiveRecord::Base
  validates :title, presence: true
  validates :api_id, presence: true, uniqueness: true
  has_many :tracks
end
