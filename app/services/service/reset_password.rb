module Service
  class ResetPassword < NotifyUserCreation

    def run
      user.generate_token(:password_reset_token)
      user.password_reset_sent_at = Time.zone.now
      user.save!
      puts "email sent!"
      # NotificationsWorker.perform_async(user.id, 'password_mailer')
    end
  end
end
