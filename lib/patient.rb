class Patient
    attr_reader :name
    @@all = [ ]
    def initialize(name)
        @name = name
        Patient.all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
<<<<<<< HEAD
        Appointment.new(date, self, doctor)
=======
        Appointment.new(self, date, doctor)
>>>>>>> 1c0cc72cfbfe15baeedefad91b84e58c5f632dec
    end

    def appointments
        #returns all appointments associated with this patient
        Appointment.all.select do |app|
          app.patient == self
        end
    end

    def doctors
        #has many doctors through appointments
        Appointment.all.select do |app|
          app.patient == self
        end.map{ |app| app.doctor }
    end
end
