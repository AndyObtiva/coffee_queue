class Barista < ActiveRecord::Base
  self.table_name='baristas'
  REGEXP_VALID_USERNAME = /\A[a-zA-Z]{1}[a-zA-Z1-9]+\z/ #TODO upgrade to support multi-lingual characters including French

  # Include default baristas modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true, uniqueness: {allow_blank: true, if: :username_changed?}, format: {with: REGEXP_VALID_USERNAME, allow_blank: true, if: :username_changed?}
end
