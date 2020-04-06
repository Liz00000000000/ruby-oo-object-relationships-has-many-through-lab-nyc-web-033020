#require 'pry'
class Doctor
    attr_reader :name
    @@all = [ ]
    def initialize(name)
        @name = name
        Doctor.all << self
    end

    def self.all
        @@all
    end

    def appointments
      #binding.pry
<<<<<<< HEAD
        Appointment.all.select {|appointment| appointment.doctor == self} #.map{ |app| app.appointment }
=======
        Appointment.all.select {|appointment| appointment.doctor == self}.map{ |app| app.appointment }
>>>>>>> 1c0cc72cfbfe15baeedefad91b84e58c5f632dec
    end


    def new_appointment(date, patient)
        Appointment.new(patient, date, self)
    end

    def patients
        #has many patients through appointments
        Appointment.all.select do |appointment|
          appointment.doctor == self
        end.map{|app| app.patient}
    end

end
