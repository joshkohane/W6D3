# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# artworks

artwork1 = Artwork.create(title: 'Mona Lisa', image_url: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FIsleworth_Mona_Lisa&psig=AOvVaw3lRHN_roFhoRWZUDyuWMHi&ust=1604013919725000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLDVo9G32OwCFQAAAAAdAAAAABAI', artist_id: 2)
artwork2 = Artwork.create(title: 'App Academy Logo', image_url: 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Appacademylogo.png', artist_id: 1)
artwork3 = Artwork.create(title: 'California Flag', image_url: 'https://images-na.ssl-images-amazon.com/images/I/61P0-cet9iL._AC_SL1280_.jpg', artist_id: 3)

# shares
share1 = ArtworkShare.create(artwork_id: 1, viewer_id: 1)
share2 = ArtworkShare.create(artwork_id: 2, viewer_id: 3)
share3 = ArtworkShare.create(artwork_id: 3, viewer_id: 2)


