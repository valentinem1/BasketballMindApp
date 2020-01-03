class Tag < ApplicationRecord
    belongs_to :team
    has_many :taggings
    has_many :articles, through: :taggings

end #end of class
