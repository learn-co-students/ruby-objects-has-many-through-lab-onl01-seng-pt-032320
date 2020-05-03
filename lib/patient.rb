#
# Patient
#   #new
#     initializes with a name (FAILED - 8)
#   #new_appointment
#     given a date and doctor, creates a new appointment belonging to that patient (FAILED - 9)
#   .all
#     knows about all patients (FAILED - 10)
#   #appointments
#     returns all appointments associated with this Patient (FAILED - 11)
#   #doctors
#     has many doctors through appointments (FAILED - 12)


class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  

  def appointments
    Appointment.all.collect do |appointment|
      if appointment.patient == self
        appointment
      end
    end
  end


  def doctors
    Appointment.all.collect do |appointment|
      if appointment.patient == self
        appointment.doctor
      end
    end
  end
end
