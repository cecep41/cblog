class User < ActiveRecord::Base
  include FriendlyId
  has_many :subdomains, :dependent => :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  friendly_id :name, :use => [:slugged]
end
