class User < ApplicationRecord
    has_many :products, dependent: :destroy
    validates :email, :uniqueness => { :message => "email sudah ada"}
end
