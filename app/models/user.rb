class User < ApplicationRecord
  before_save :downcase_email

  has_secure_password

  PROVIDER = %w[local google]

  validates :name,
            presence: true
  validates :email,
            presence: true,
            length: { maximum: 255 },
            format: { with: URI::MailTo::EMAIL_REGEXP },
            uniqueness: true
  validates :name,
            presence: true
  validates :password,
            length: { minimum: 6 },
            if: -> { provider == "local" }
  validates :provider,
            presence: true,
            inclusion: { in: PROVIDER }

  private

  def downcase_email
    self.email = email.downcase
  end
end
