class Comentario < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :hilo

	validates_presence_of :texto
end
