class Mytutoriallist < ApplicationRecord
  belongs_to :mytutorial
  has_many :tutorials
  accepts_nested_attributes_for :tutorials, allow_destroy: true
end
