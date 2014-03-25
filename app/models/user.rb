class User < ActiveRecord::Base
  has_secure_password
  include PasswordManager

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true

  def to_param
    [id, first_name, last_name].join('-')
  end

  def to_s
    full_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
