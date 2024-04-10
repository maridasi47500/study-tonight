class WelcomeController < ApplicationController
  include ActionView::Helpers::TextHelper
  protect_from_forgery except: [:code]
  def index
  end
  def code
    threads=[]
    @myvalue=""
    langage=Programminglanguage.find params[:langageid]
    mycode=params[:mycode]
    langage=langage.code
    content=mycode
    @hey="echo $(#{langage} '\n#{content}\n' 2>&1)"
    p @hey
         threads=[]
                                                                                                             myvalue=""
                                                                                                                                                threads << Thread.new { Thread.current[:output] =`#{@hey}` }#jj
                                                                                                                                                                                        threads.each do |t|
                                                                                                                                                                                                                                             t.join
                                                                                                                                                                                                                                                                                                         myvalue << t[:output]
                                                                                                                                                                                                                                                                                                                                                                           end
                                                                                                                                                                                                                                      p myvalue
    render json: {"somecode" => simple_format(myvalue)}
  end
end
