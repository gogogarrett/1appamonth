module Form
  class User < Reform::Form
    properties [:first_name, :last_name, :email, :chat_disabled]

    validates :first_name, :last_name, :email, presence: true
  end
end
