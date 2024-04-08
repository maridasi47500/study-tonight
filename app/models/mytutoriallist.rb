class Mytutoriallist < ApplicationRecord
  belongs_to :sometutorial
  has_many :tutorials
  accepts_nested_attributes_for :tutorials, allow_destroy: true
end
