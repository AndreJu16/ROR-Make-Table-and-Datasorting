class Article < ApplicationRecord
    validates :nama, presence: true
    validates :a, presence: true
    validates :b, presence: true
    validates :c, presence: true
    validates :urutan, presence: true
end
