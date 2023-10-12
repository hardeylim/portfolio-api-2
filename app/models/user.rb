# frozen_string_literal: true

class User < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :email,
            presence: true,
            length: { maximum: 255 },
            format: { with: URI::MailTo::EMAIL_REGEXP },
            uniqueness: { case_sensitive: false }

  def full_name
    [first_name, last_name].compact_blank.join(' ')
  end
end
