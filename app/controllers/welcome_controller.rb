class WelcomeController < ApplicationController
  include ActionView::Helpers::TextHelper
  protect_from_forgery except: [:code]
  def index
  end
  def code
    threads=[]
    @myvalue=""
    myvalue=""
    langage=Programminglanguage.find params[:langageid]
    mycode=params[:mycode]
    langage=langage.code
    if langage != 'html'
    content=mycode
    @hey="echo $(#{langage} '\n#{content}\n' 2>&1)"
    p @hey
         threads=[]

                                                                                                                                                threads << Thread.new { Thread.current[:output] =`#{@hey}` }#jj
                                                                                                                                                                                        threads.each do |t|
                                                                                                                                                                                                                                             t.join
                                                                                                                                                                                                                                                                                                         myvalue << t[:output]
                                                                                                                                                                                                                                                                                                                                                                           end
                                                                                                                                                                                                                                      myvalue=simple_format(myvalue)
    else
      myvalue=mycode
    end
    render json: {"somecode" => myvalue}
  end
end
