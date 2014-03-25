class SetupDatabase < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string      :first_name
      t.string      :last_name
      t.string      :email
      t.string      :password_digest
      t.string      :password_reset_token
      t.datetime    :password_reset_sent_at

      t.timestamps
    end

    create_table :apps do |t|
      t.string      :title
      t.text        :desc
      t.integer     :user_id

      t.timestamps
    end

    create_table :app_images do |t|
      t.string      :image
      t.integer     :app_id

      t.timestamps
    end

  end
end
