require "csv"

Photo.delete_all
Photographer.delete_all

filename = Rails.root.join("db/photos.csv")

puts "Loading Photos from the CSV file: #{filename}"

csv_data = File.read(filename)

photos = CSV.parse(csv_data, headers: true, encoding: "utf-8")

photos.each do |p|
  photographer = Photographer.find_or_create_by(photographer: p["photographer"])

  if photographer&.valid?
    photo = photographer.photos.create(
      width:        p["width"],
      height:       p["height"],
      url:          p["url"],
      download_url: p["download_url"]
    )

    puts "Invalid Photo #{p['url']}" unless photo&.valid?
  else
    puts "Invalid Photographer #{p['photographer']}"
  end
end

puts "Created #{Photographer.count} Photographers"
puts "Created #{Photo.count} Photos"
