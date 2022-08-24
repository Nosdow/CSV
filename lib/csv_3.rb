require 'csv'
require 'pry'


def parsing_10_first


  municipality_ary = []

   parsed_csv = CSV.parse(File.read("/Users/ti80/Desktop/dev/CSV/municipality.csv"), headers: true)

   parsed_csv.by_col[0].each do |col| 

    municipality_ary << col
   end
  
    municipality_ary = municipality_ary[0..9]
   

  end





def write_to_csv
  CSV.open("10_first.csv", 'w') do |csv|

     csv << ["name"]

     parsing_10_first.each do |i|
    
      csv << [i]

     end

  end

end



  binding.pry









