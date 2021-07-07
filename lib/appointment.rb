class Appointment
    attr_reader :date, :patient, :doctor
    @@all = []

    def initialize(date, patient_obj, doctor_obj)
        @date = date
        @patient = patient_obj
        @doctor = doctor_obj
        @@all << self
    end

    def self.all
        @@all
    end
end