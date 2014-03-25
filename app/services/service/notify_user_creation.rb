module Service
  class NotifyUserCreation
    attr_reader :user

    def initialize user
      @user = user
    end

    def run
      send_welcome_email
      user
    end

    def send_welcome_email
      puts 'welcome mail done!'
      # NotificationsWorker.perform_async(user.id, 'welcome_mailer')
    end
  end
end
