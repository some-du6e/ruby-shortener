class Link < ApplicationRecord
    validates :name, presence: false
    validates :link, presence: true
end
