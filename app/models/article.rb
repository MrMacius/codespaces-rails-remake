class Article < ApplicationRecord
    #belongs_to :User
    has_many :comments
    has_and_belongs_to_many :Tag
end
