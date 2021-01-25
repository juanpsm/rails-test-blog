class Article < ApplicationRecord
  has_rich_text :content
  belongs_to :user #campo adicional user_id
  has_many :has_categories
  has_many :categories, through: :has_categories
  attr_accessor :category_elements

  def save_categories
    # si recibe un string 1,2,3
    # convertir a array
    # categories_array = category_elements.split(",")
    # al hacer checkbox ya viene como arreglo
    # Si esta vacio borro todas
    return has_categories.destroy_all if category_elements.nil? || category_elements.empty?
    # Borro las no seleccionadas
    has_categories.where.not(category_id: category_elements).destroy_all
    # Itero y agrego las seleccionadas
    category_elements.each do |category_id|
      # unless HasCategory.where(article: self, category_id: category_id).any?
      #   HasCategory.create(article: self, category_id: category_id)
      # end
      # o mejor
      HasCategory.find_or_create_by(article: self, category_id: category_id)
    end
  end
end
