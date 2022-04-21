class User < ApplicationRecord
    validates :email, presence: true
    validates :age, numericality: { only_integer: true }
    validates :age, numericality: { greater_than_or_equal_to: 18, less_than_or_equal_to: 150}
    scope :find_valid, -> { where("age > ?", 20) }
    before_save :set_full_name

    def set_full_name
        self.full_name = "#{self.name} #{self.last_name}"
    end
end
