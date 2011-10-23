require 'rubygems'
require 'extraction'

class Statistics
  
  def occurrences_tot
    @num=Numbers.new(90)
    @ext=Extraction.new
    @num[0]
    for i in 1..90
      occ=Extraction.count(:conditions => ["n_1 = ? OR n_2 = ? OR n_3 = ? OR n_4 = ? OR n_5 = ? OR n_6 = ?", i, i, i, i, i, i])
      index=i-1
      puts i.to_s+"  "+occ.to_s
      @num[index][:freq]=occ
    end
       
  end
end

class Numbers
  attr_accessor :numbers
  def initialize(n)
    @numbers=[]
    for i in 1..n
      @numbers<<{:number => i , :freq=>""}
    end
  end
end