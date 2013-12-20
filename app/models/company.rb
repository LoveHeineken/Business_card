class Company < ActiveRecord::Base
  has_many :groups
  validates :url, presence: true
  validates :url, length: {maximum: 30}, allow_nil: true, allow_blank: true 
  validates :adress, presence: true
  validates :adress, length: { maximum: 21 }
  validates :tel, format: { with: /[0-9]{1,4}-[0-9]{1,4}-[0-9]{1,4}/ } 
  validates :tel, length: { maximum: 11 }, allow_nil: true
  validates :fax, format: { with: /[0-9]{1,4}-[0-9]{1,4}-[0-9]{1,4}/ }
  validates :fax, length: { maximum: 11 }, allow_nil: true
end
