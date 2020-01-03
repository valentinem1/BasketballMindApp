class Article < ApplicationRecord
    belongs_to :user
    has_many :taggings
    has_many :tags, through: :taggings

end #end of class
