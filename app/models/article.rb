class Article < ApplicationRecord #rails 4 is Article < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }  #make sure there is a title on the article before being saved to the DB
  validates :description, presence: true, length: { minimum: 10, maximum: 3000 }
  validates :user_id, presence: true
end