class Mytutorial < ApplicationRecord
  has_many :sometutorials
  accepts_nested_attributes_for :sometutorials
  def pic=(uploaded_io)
  File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
  end
  write_attribute(:pic,uploaded_io.original_filename)
  end
  def pic
  read_attribute(:pic)
  end
end
