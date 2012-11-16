namespace :db do
  desc "Fille db with old data"
  task :properties => :environment do
    fields = {'tract' => 6, 'street' => 7, 'title' => 10, 'short_description' => 11, 'description' => 12, 'city' => 14, 'state_id' => 15, 'zip_code' => 17, 'county' => 18, 'latitutde' => 20, 'longitude' => 21, 'address' => 22, 'price' => 24, 'acres' => 28}
    
    listingCSV = File.open("#{File.dirname(__FILE__)}/../assets/listings.csv", 'r')
    rowStrings = listingCSV.readlines()
    listingCSV.close()
    puts(rowStrings.length)

    for line in rowStrings do
      items = line.split('#')
      put (items[6] + " " + items[7] + " " + items[10] + " " + items[11] + " " + items[12] + " " + items[14] + " " + items[15] + " " + items[17] + " " + items[18] + " " + items[20] + " " + items[21] + " " + items[22] + " " + items[24] + " " + items[28])
    end
  end
end