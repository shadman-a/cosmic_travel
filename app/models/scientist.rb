class Scientist < ApplicationRecord
    has_many :missions, dependent: :delete_all
    has_many :planets, through: :missions

    validates :name, presence: true
    validates :name, uniqueness: true
end
