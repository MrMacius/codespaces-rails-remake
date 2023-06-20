class Article < ApplicationRecord

    include Visible

    has_one_attached :image
    #belongs_to :User
    has_many :comments

    def self.ransackable_attributes(auth_object = nil)
        ["author", "content", "title"]
      end
end
