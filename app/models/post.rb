class Post < ApplicationRecord
  has_one :message
  belongs_to :blog
  validates :title, presence: true, length: { in: 7..30 }
  validates :content, presence: true

  # esta callback se ejecutará después de crear un nuevo usuario
  after_create :creacion_exitosa

  # esta callback se ejecutará después de actualizar un usuario existente
  after_update :actualizacion_exitosa

  private
  def creacion_exitosa
    puts "Post creado con exito."
  end
  def actualizacion_exitosa
    puts "Post actualizado con exito."
  end
      
end
