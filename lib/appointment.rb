class Appointment
    attr_reader :date
    attr_accessor :patient, :doctor
    @@all = [ ]
  #  @@patients = [ ]
<<<<<<< HEAD
    def initialize(date, patient, doctor)
=======
    def initialize(patient, date, doctor)
>>>>>>> 1c0cc72cfbfe15baeedefad91b84e58c5f632dec
        @patient = patient
        @doctor = doctor
        @date = date
        Appointment.all << self
      #  @@patients << self.patient
    end

    def self.all
        @@all
    end

    def patient
      #belongs to a patient
<<<<<<< HEAD
      @patient 
=======
      self.patient
>>>>>>> 1c0cc72cfbfe15baeedefad91b84e58c5f632dec
    end

    def doctor
        #belongs to a doctor
<<<<<<< HEAD
        @doctor
=======
        self.doctor 
>>>>>>> 1c0cc72cfbfe15baeedefad91b84e58c5f632dec
    end
end
