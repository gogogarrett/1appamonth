module PasswordManager
  extend ActiveSupport::Concern

  included do
  end

  def generate_password
    temp_pass = SecureRandom.urlsafe_base64
    self.password = temp_pass
    self.password_confirmation = temp_pass
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

  def password_expired?
    password_reset_sent_at < 2.hours.ago
  end

  module ClassMethods
  end
end
