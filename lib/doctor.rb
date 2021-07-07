class Doctor
  attr_accessor :name, :appointments, :patients

  @@all = []
  def initialize (name)
    @name = name
    @patients = []
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|apt| apt.doctor == self}
  end

  def new_appointment(date,patient,doctor=self)
    Appointment.new(date, patient, self)
  end

  def patients
    Appointment.all.collect do |apt|
      if apt.doctor == self
        @patients << apt.patient
      end
    end
    @patients
  end


end
