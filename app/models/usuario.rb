class Usuario < ActiveRecord::Base
	has_many :hilos
	has_many :comentarios

	validates_presence_of :nombre
end
