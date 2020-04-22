class Doctor
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient_obj)
        Appointment.new(date, patient_obj, self)
    end

    def appointments
        Appointment.all.select {|apps| apps.doctor == self}
    end

    def patients
        self.appointments.map {|app| app.patient}
    end
end