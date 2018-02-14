class Article < ApplicationRecord #rails 4 is Article < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }  #make sure theere is a title on the article before being saved to the DB
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }

end