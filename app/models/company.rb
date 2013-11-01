class Company < ActiveRecord::Base
  has_many :groups
  validates :url, presence: true
  validates :url, length: {maximum: 30}, allow_nil: true, allow_blank: true 

end
