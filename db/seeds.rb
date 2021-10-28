# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'CharlieLobe', password_digest: '12345', image_url: "https://www.dmarge.com/cdn-cgi/image/width=1200,quality=85,fit=scale-down,format=auto/https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg")

story1 = Story.create(name: "Test Story", body_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", images: "https://images.unsplash.com/photo-1487174244970-cd18784bb4a4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG9ycm9yfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80", gifs: "https://media4.giphy.com/media/dupQmpyPBCiPBpjvrB/200.gif")

user_story1 = UserStory.create(story_id: 1, user_id: 1)


