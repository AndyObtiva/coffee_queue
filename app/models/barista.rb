class Barista < ActiveRecord::Base
  self.table_name='baristas'
  REGEXP_VALID_USERNAME = /\A[a-zA-Z]{1}[a-zA-Z1-9]+\z/ #TODO upgrade to support multi-lingual characters including French

  # The following is not working as per the config specs. TODO Try to figure that out eventually
  #module ClassMethods
  #  Devise::Models.config(Barista, :password_length)
  #end

  # Include default baristas modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable#, :validatable

  validates :username, presence: true, uniqueness: {allow_blank: true, if: :username_changed?}, format: {with: REGEXP_VALID_USERNAME, allow_blank: true, if: :username_changed?}

  validates_presence_of     :password, :if => :password_required?
  validates_confirmation_of :password, :if => :password_required?
  validates_length_of       :password, :within => 6..128, :allow_blank => true

  def as_json(attributes)
    #removing attributes for security reasons
    super(attributes).except('id', 'email')
  end

  protected

  # Checks whether a password is needed or not. For validations only.
  # Passwords are always required if it's a new record, or if the password
  # or confirmation are being set somewhere.
  def password_required?
    !persisted? || !password.nil? || !password_confirmation.nil?
  end

end
