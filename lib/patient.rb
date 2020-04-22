class Patient
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor_obj)
        Appointment.new(date, self, doctor_obj)
    end

    def appointments
        Appointment.all.select {|apps| apps.patient == self}
    end

    def doctors
        self.appointments.map {|app| app.doctor }
    end
end