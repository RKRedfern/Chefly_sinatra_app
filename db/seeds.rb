
riley = User.create(email: "riley@riley.com", username: "Riley Redfern", image_url: "https://avatars0.githubusercontent.com/u/72267479?s=460&u=8310c6b898088a9cad3a1f75b3f02514ca46384b&v=4", bio: "Once a Chef always a Chef!", password: "pw")

don = User.create(email: "don@don.com", username: "Don Mallory", image_url: "https://avatars1.githubusercontent.com/u/60760677?s=400&v=4", bio: "The best human person alive!", password: "pw")

Post.create(title: "Angel Food Cake", image_url: "https://cdn.sallysbakingaddiction.com/wp-content/uploads/2019/05/angel-food-cake-600x900.jpg", description: "A classic complexity", user_id: riley.id)

Post.create(title: "Duck a L'Orange a L'Martini", image_url: "https://img.buzzfeed.com/buzzfeed-static/static/2015-11/29/17/enhanced/webdr13/original-20671-1448835407-3.jpg?downsize=700%3A%2A&output-quality=auto&output-format=auto&output-quality=auto&output-format=auto&downsize=360:*", description: "A jazzy cocktail inspired by an unforgettable french dish.", user_id: don.id)