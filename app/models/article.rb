class Article < ActiveRecord::Base
    belongs_to :user
    validates :title, presence: true, length: {minimum: 3, maximum: 5}
    validates :description, presence: true, length: {minimum: 5, maximum: 10}
    validates :user_id, presence: true
end