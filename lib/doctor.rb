class Doctor

  attr_accessor :patient
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select {|appointments| appointments.doctor == self}
  end

  def patients
    self.appointments.map {|appointment| appointment.patient}
  end

  def self.all
    @@all
  end

  def new_appointment( date, patients)
    Appointment.new(date, patients, self)
  end

end