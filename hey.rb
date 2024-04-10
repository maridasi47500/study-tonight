@hey="python3 <<END\nprint(\"yeah\")\nprint(\"wiw\")\nEND"
@hey="echo $(ruby -e '\n hwo are you\n \n' 2>&1)"
                              myvalue=""
     threads=[]
          pic = 'hi.png'
               message = 'hi.png'
                    caption='caption'
                         phone='+777'

                                   threads << Thread.new { Thread.current[:output] =`#{@hey}` }#jj
                                        threads.each do |t|

                                                   t.join

                                                            myvalue << t[:output]


                                                                  end
                                              p myvalue
