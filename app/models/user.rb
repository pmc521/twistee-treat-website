class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: [:create, :update], presence: true
  validates :admin, default: false

  def editable_by?(user_requesting,user_to_be_edited)
    user_requesting == user_to_be_edited || user_requesting.try(:admin?)
  end

  def destroyable_by?(user_requesting, user_to_be_edited)
    user_requesting == user_to_be_edited || user_requesting.try(:admin?)
  end

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end
