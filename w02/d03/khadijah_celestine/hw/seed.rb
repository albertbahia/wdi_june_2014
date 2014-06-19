# create 100 values for apartment table
apartments = []
offices = []
stores = []
def pick_line(file_name)
  random_line = nil
  File.open(file_name) do |file|
    file_lines = file.readlines()
    random_line = file_lines[Random.rand(0...file_lines.size())]
  end
  random_line.chomp
end

def apartment_data
  apt_no = [*1..12].sample
  bedrooms = [*1..3].sample
  bathrooms = [*1..2].sample
  address = "'" + [*100..350].sample.to_s + " " + pick_line("streets.txt") + "'"
  tenanat = "'" + pick_line("names.txt") + "'"
  occupied = true
  sq_ft = [*700...1000].sample
  price = [*1100..2000].sample

  apt_info = [apt_no, bedrooms, bathrooms, address, tenanat, occupied, sq_ft, price]
  apartment = apt_info.join(', ')
  "INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenanat, occupied, sq_ft, price) VALUES (#{apartment});"
end

def office_data
  office_no = [*100..350].sample
  floors = [*4..8].sample
  sq_ft = [*1000..3500].sample
  cubicles = [*100..350].sample
  bathrooms = [*100..350].sample
  address = "'" + [*100..350].sample.to_s + " " + pick_line("streets.txt") + "'"
  company = "'" + "#{pick_line("names.txt")}#{pick_line("names.txt")} INC" + "'"
  occupied = true
  price = [*2100..4000].sample

  office_info = [office_no, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price]
  office = office_info.join(', ')
  "INSERT INTO offices (office_no, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price) VALUES (#{office});"
end

def store_data
  address = "'" + [*100..350].sample.to_s + " " + pick_line("streets.txt") + "'"
  occupied = true
  price = [*2100..4000].sample
  kitchen = true
  sq_ft = [*1000..3500].sample
  owner = "'" + pick_line("names.txt") + "'"
  outdoor_seating = true

  store_info = [address, occupied, price, kitchen, sq_ft, owner, outdoor_seating]
  store = store_info.join(', ')
  "INSERT INTO stores (address, occupied, price, kitchen, sq_ft, owner, outdoor_seating) VALUES (#{store});"
end

10.times do
  apartments.push(apartment_data)
  offices.push(office_data)
  stores.push(store_data)
end

top_str = "TRUNCATE apartments;\n";
top_str += "TRUNCATE offices;\n";
top_str += "TRUNCATE stores;";

puts apartments, offices, stores






####################
# streets.txt
# remove blank lines
#   sed '/^$/d' streets.txt > tt
# remove one character lines
#   awk 'length==1' tt
# change name back to streets.txt
#   mv tt streets.txt
