class User < ApplicationRecord
    VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    before_save :make_name_lowercase
    
    validates :name, presence: true,
                     length: {maximum: 50}

    validates :email, presence: true,
                      uniqueness: {case_sensitive: false},
                      format: {with: VALID_EMAIL}

    def make_name_lowercase
        
    end
end