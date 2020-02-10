class Patient
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date,self,doctor)
    #self.appointments << newAppt
  end

  def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end

  def doctors
    Appointment.all.collect do |appt|
      appt.doctor
    end
  end

end
