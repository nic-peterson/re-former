class User < ApplicationRecord
  validates :username,
            presence: { message: "Username can't be blank" },
            uniqueness: { case_sensitive: false, message: "Username has already been taken" },
            length: { maximum: 50, too_long: "Username can't be longer than 50 characters" }

  validates :email,
            presence: { message: "Email can't be blank" },
            uniqueness: { message: "Email has already been taken" },
            format: { with: URI::MailTo::EMAIL_REGEXP, message: "Email is not a valid format" }

  validates :password,
            presence: { message: "Password can't be blank" }
end
