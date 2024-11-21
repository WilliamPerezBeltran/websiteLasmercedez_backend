# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#


Header.create(name: "home", path: "/", position: 1, component: "VistaIndex")
Header.create(name: "galeria", path: "/gallery", position: 2, component: "VistaGallery")
Header.create(name: "videos", path: "/videos", position: 3, component: "VistaVideos")
Header.create(name: "tipos de alojamiento", path: "/availability", position: 4, component: "VistaAvailability")
Header.create(name: "contacto", path: "/contact", position: 5, component: "VistaContact")




puts "-.-----execute----"

