# Appointment
#   .all
#     knows about all appointments that have been created (FAILED - 4)
#   #new
#     initializes with a date, patient, and doctor (FAILED - 5)
#   #patient
#     belongs to a patient (FAILED - 6)
#   #doctor
#     belongs to a doctor (FAILED - 7)


class Appointment
  attr_accessor  :date, :patient, :doctor

  @@all = []

  def self.all
    @@all
  end

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
end
