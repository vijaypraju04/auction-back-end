# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "vijaypraju04", amount: 20000)
user2 = User.create(username: "frawlcity", amount: 20000)
user3 = User.create(username: "kendog", amount: 20000)
user4 = User.create(username: "itsjustdiego", amount: 20000)

auction1 = Auction.create(item: "http://www.toptenz.net/wp-content/uploads/2010/06/Sultans-golden-cake-most-expensive-desserts.jpg", title: "Sultan's Golden Cake", description: "A great pastry", value: 5000)

auction2 = Auction.create(item: "https://media1.popsugar-assets.com/files/thumbor/Ut96-35GwDhUIfbZFzgH-jQi4ak/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2015/04/12/079/n/1922243/26282b73_edit_img_cover_file_14690959_1425494100_mastiff/i/10-Most-Expensive-Dog-Breeds.jpg", title: "A Tibetan Mastiff", description: "A very cute dog", value: 10000)

auction3 = Auction.create(item: "http://webneel.com/daily/sites/default/files/images/daily/10-2013/3-most-expensive-painting-portrait-adele-bloch-bauer.jpg", title: "Portrait of Adele Bloch-Bauer I", description: "This painting was painted by Gustav Klimt in 1907", value: 30000)

bid1 = Bid.create(user_id: 1, auction_id: 1, amount: 0)
bid2 = Bid.create(user_id: 2, auction_id: 2, amount: 0)
bid3 = Bid.create(user_id: 3, auction_id: 3, amount: 0)
bid4 = Bid.create(user_id: 4, auction_id: 3, amount: 0)