class Article < ApplicationRecord
    #belongs_to :User
    has_many :comment
    has_and_belongs_to_many :tag
end
