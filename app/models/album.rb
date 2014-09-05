class Album < ActiveRecord::Base
  validates :catalog_number, presence: true, uniqueness: true
  validates :title, presence: true
end
