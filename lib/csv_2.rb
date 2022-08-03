require 'csv'


def parsing_10_first


  municipality_ary = []

  CSV.foreach(("municipality.csv"), headers: true, col_sep: ',') do |col|

  municipality_ary << col[0]

  end

  municipality_10_first = municipality_ary.join(", ").split(%r{,\s*})[0..9] 

end


def write_to_csv

  CSV.open("the_10_first.csv", 'w') do |csv|

     csv << ["name"]

    parsing_10_first.length.times do |i|
    
      csv << [parsing_10_first[i]]

    end 
    
  end 

end

def perform
  write_to_csv
end

perform


