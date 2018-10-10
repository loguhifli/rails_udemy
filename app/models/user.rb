class User < ApplicationRecord
    has_many :articles
    before_save { self.email = email.downcase }
    validates :name, presence:true
    validates :age, presence:true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence:true, 
    format: {with:VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive:false}

end
