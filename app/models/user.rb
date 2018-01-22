class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :doctorsappointments , foreign_key: :doctor_id , class_name: Appointment       
  has_many :patientsappointments , foreign_key: :patient_id , class_name: Appointment

  has_many :patients, through: :doctorsappointments
  has_many :doctors, through: :patientsappointments

  has_many :notes ,as: :noteable
  has_one :image ,as: :imageable

  enum role: [:doctor,:patient]

  #Validations

end
