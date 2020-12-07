
riley = User.create(email: "riley@riley.com", name: "Riley Redfern" image_url: "https://avatars0.githubusercontent.com/u/72267479?s=460&u=8310c6b898088a9cad3a1f75b3f02514ca46384b&v=4", bio: "Once a Chef always a Chef!", password: "pw")

don = User.create(email: "don@don.com", name: "Don Mallory" image_url: "https://avatars1.githubusercontent.com/u/60760677?s=400&v=4", bio: "The best human person alive!", password: "pw")

Post.create(title: "Angel Food Cake", image_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fsallysbakingaddiction.com%2Fangel-food-cake%2F&psig=AOvVaw26nBXG8eyIPj345P2uM95a&ust=1607441694653000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOCU_oqZvO0CFQAAAAAdAAAAABAD", description: "A classic complexity", user_id: riley.id)

Post.create(title: "Duck a L'Orange a L'Martini", image_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.crazyforcrust.com%2Forange-martini-recipe%2F&psig=AOvVaw1hvIXalFHjqX5KKgt_3ztF&ust=1607441714901000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKik05SZvO0CFQAAAAAdAAAAABAD", description: "A jazzy cocktail inspired by an unforgettable french dish.", user_id: don.id)