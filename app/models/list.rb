class List < ActiveRecord::Base
  has_many :list_items
  belongs_to :users
end
