namespace :db do

  task :update_images => :environment do
    images = Image.all
    log = File.new("update_image_log.txt", "w+")
    images.each do |image|
      filename = image[:filename] + ".jpg"
      log.puts filename
      # image.update_attribute(:filename, filename)
    end
    log.close
  end

end