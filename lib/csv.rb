require 'csv'

name_municipality_10_first = []

municipality = []

CSV.foreach(("../municipality.csv"), headers: true, col_sep: ",") do |col|
  municipality << col[0]
end

name_municipality_10_first << municipality

names_for_csv = name_municipality_10_first.join(", ").split(%r{,\s*})[0..9]

names_for_csv

CSV.open('../municipality_10_first.csv', 'w') do |csv|
  csv << ["name"]
  names_for_csv.length.times do |i|
  csv << [names_for_csv[i]]
  end 
end 


=begin
name_municipality_10 << municipality.by_col[0]

name_municipality_10.join(", ").split(%r{,\s*})[0..9]

CSV.open('municipality_10.csv', 'wb') do |csv|
  csv << ["name"]
  name_municipality_10.length.times do |i|
  csv << [name_municipality_10[i]]
  end 
end 
=end

=begin
CSV.open("municipality_10.csv", "w", headers: true) do |csv|
  
  csv << name_municipality_10
end
=end














