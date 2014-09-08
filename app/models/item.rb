class Item < ActiveRecord::Base
  has_many :photos
  before_save :capitalize_name
  validates :name, :presence => true

  private

    def capitalize_name
      self.name = self.name.capitalize
    end
end
