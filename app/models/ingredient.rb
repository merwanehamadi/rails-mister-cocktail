class Ingredient < ApplicationRecord
  validates :name, presence: true, allow_blank: false, uniqueness: true
  has_many :doses
  before_destroy :check_for_doses

  private

  def check_for_doses
    if doses.count > 0
      raise ActiveRecord::InvalidForeignKey
      return false
    end
  end

end
