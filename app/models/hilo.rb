class Hilo < ActiveRecord::Base
	belongs_to :usuario
	has_many :comentarios, dependent: :destroy

	validates :texto, presence: true, uniqueness: true
end
