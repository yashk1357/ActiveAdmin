class User < ApplicationRecord
    has_one_attached :profile_picture
    after_create :user_created_mail
    
    private
        def user_created_mail
            UsersMailer.with(user: self).user_created.deliver_later
        end
end
