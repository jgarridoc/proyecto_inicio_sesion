class User < ApplicationRecord
    validates :first_name, :last_name, :email_adress, :age, presence: true
    validates :first_name, :last_name, length: {minimum:2}
    validates_numericality_of :age
    validates_inclusion_of :age,  in:  10..150
end
