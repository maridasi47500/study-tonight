class Sometutorial < ApplicationRecord
  has_many :mytutoriallists
  accepts_nested_attributes_for :mytutoriallists
end
