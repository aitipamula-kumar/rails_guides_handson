class Article < ApplicationRecord
    has_many :comments, dependent: :delete_all
    
    validates :title, presence: true
    validates :body, presence: true, length: { minimum:5 }  

end
