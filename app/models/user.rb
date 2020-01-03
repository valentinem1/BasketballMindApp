class User < ApplicationRecord
    has_many :articles

    validates :username, uniqueness: true

    def full_name
        first_name + " " + last_name
    end


end #end of class
