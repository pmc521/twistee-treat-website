class Schedule < ApplicationRecord
  TIMES = [
    "1200", "1230",
    "100", "130",
    "200", "230",
    "300", "330",
    "400", "430",
    "500", "530",
    "600", "630",
    "700", "730",
    "800", "830",
    "900", "930",
    "1000", "1030",
    "1100", "1130",
  ]


  belongs_to :user
  belongs_to :shift

  validates :user_id, presence: true
  validates :shift_id, presence: true

  def start_time
    self.my_related_model.start ##Where 'start' is a attribute of type 'Date'   accessible through MyModel's relationship
  end
end
