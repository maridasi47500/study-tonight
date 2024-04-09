class WelcomeController < ApplicationController
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
    p "STR=$'#{langage} <<END\n#{content}END\n' & bash -c $STR"
    threads << Thread.new { Thread.current[:output] = `STR=$'#{langage} <<END\n#{content}END\n' & bash -c "$STR"`}#jj
             threads.each do |t|
                                   t.join
                                                                @myvalue << t[:output]
                                                                                                   end
    render json: {"somecode" => @myvalue}
  end
end
