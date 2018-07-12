class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]
         
  validates :name, presence: true
  validates :username, presence: true
  validates_format_of :username, :with => /\A#[\w+\_]+\z/, :on => :create
  
  has_many :tweeets, dependent: :destroy

  def self.create_from_provider_data(provider_data)
    where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do | user |
      user.email = provider_data.info.email
      user.name = provider_data.info.name
      user.username = provider_data.info.email.gsub(/(.+)@[^.]+.+/, '\1')
      user.password = Devise.friendly_token[0, 20]
      # user.skip_confirmation!
    end
  end
end
