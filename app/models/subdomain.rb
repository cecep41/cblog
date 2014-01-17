class Subdomain < ActiveRecord::Base
  include FriendlyId
  belongs_to :user
  friendly_id :name, :use => [:slugged]
  validates_uniqueness_of :name, :case_sensitive => false
  validates_presence_of :name
end
