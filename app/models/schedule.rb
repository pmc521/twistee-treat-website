class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :shift

  validates :user_id, presence: true
  validates :shift_id, presence: true

  def start_time
    self.my_related_model.start ##Where 'start' is a attribute of type 'Date'   accessible through MyModel's relationship
  end
end
