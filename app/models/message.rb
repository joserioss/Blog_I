class Message < ApplicationRecord
  belongs_to :post
  validates :message, presence: true, length: { in: 15..30 }
  validates :author, presence: true

  # esta callback se ejecutará después de crear un nuevo usuario
  after_create :creacion_exitosa

  # esta callback se ejecutará después de actualizar un usuario existente
  after_update :actualizacion_exitosa

  private
  def creacion_exitosa
    puts "Mensaje creado con exito."
  end
  def actualizacion_exitosa
    puts "Mensaje actualizado con exito."
  end
      
end
