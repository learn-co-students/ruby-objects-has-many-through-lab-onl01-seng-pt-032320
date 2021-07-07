class Appointment

  attr_accessor :patient, :doctor, :date
@@all = []
  def initialize(date, patient, doctor)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end
def self.all
  @@all
end
#def patients
#  self.patient
#end
#def doctors
#  self.doctor
#end
end
