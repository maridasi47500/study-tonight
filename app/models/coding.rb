class Coding < ApplicationRecord
  has_many :somecodings
  accepts_nested_attributes_for :somecodings, allow_destroy:true
  def self.hey(langage,content)
    threads << Thread.new { Thread.current[:output] = `STR=$'#{langage} <<END\n#{content}END\n' && bash -c "$STR"`}#jj
         threads.each do |t|
                    t.join
                             myvalue << t[:output]
                                   end
      return myvalue
    
  end
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
