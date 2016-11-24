class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        :rememberable, :trackable, :validatable
  # attr_accessor :login
  # validates :username, presence: true, length: {maximum: 16},
  #   uniqueness: { case_sensitive: false },
  #   format: { with: /\A[a-zA-Z0-9]*\z/, message: "may only contain letters and numbers." }

  # def self.find_first_by_auth_conditions(warden_conditions)
  #   conditions = warden_conditions.dup
  #   if login = conditions.delete(:login)
  #     where(conditions).where(["username = :value OR lower(email) = lower(:value)", { :value => login }]).first
  #   else
  #     where(conditions).first
  #   end
  # end

end
