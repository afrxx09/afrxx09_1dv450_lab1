class ApiApplication < ActiveRecord::Base
  belongs_to :api_user
  has_one :api_key
  has_many :app_urls
  
  validates :api_key, presence: true
  validates :name, presence: true
  validates :description, presence: true
end
