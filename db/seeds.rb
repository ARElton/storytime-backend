# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 
Child.destroy_all 
Storytime.destroy_all 
ChildStorytime.destroy_all
Activity.destroy_all 
ChildActivity.destroy_all 
Category.destroy_all 
StorytimeActivity.destroy_all 

# do not change these

############# USERS #############

amelia = User.create(username: "Amelia", name: "Amelia", password: "123")
laura = User.create(username: "Laura", name: "Laura", password: "123")

############# CHILDREN #############

arthur = Child.create(user_id: User.find_by(name: "Laura").id, name: "Arthur", age: 1)
cyrus = Child.create(user_id: User.find_by(name: "Amelia").id, name: "Cyrus Taylor", age: 4)
maple = Child.create(user_id: User.find_by(name: "Amelia").id, name: "Maple", age: 2)

############# CATEGORIES #############

talk = Category.create(category: "Talk")
sing = Category.create(category: "Sing")
read = Category.create(category: "Read")
write = Category.create(category: "Write")
play = Category.create(category: "Play")

############# ACTIVITIES #############

Activity.create(title: "You Are My Sunshine", description: "You are my sunshine, my only sunshine. You make me happy when skies are gray. You'll never know dear, how much I love you. Please don't take my sunshine away.", link: "", image: "", category_id: Category.find_by(category: "Sing").id)
Activity.create(title: "What can you see out your window?", description: "Take a couple minutes and look out the window. Name things that are related to the storytime topic. Try to use repetitive language e.g. 'Look! A red bird. I see a red bird. Do you see a red bird?", link: "", image: "", category_id: Category.find_by(category: "Talk").id)
Activity.create(title: "These Are My Glasses", description: "These are my glasses, this is my book. I put on my glasses and open up the book. Now I read, read, read, and I look, look, look. I put down my glasses, and close up the book.", link: "https://www.youtube.com/watch?v=9dvl1oa5AVc", image: "", category_id: Category.find_by(category: "Sing").id)
Activity.create(title: "The Tiny Seed", description: "by Eric Carle", link: "", image: "", category_id: Category.find_by(category: "Read").id)

Activity.create(title: "I'm the Biggest Thing in the Ocean", description: "by Kevin Sherry", link: "", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "Hooray for Fish", description: "by Lucy Cousins", link: "", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "One, Two, Three, Four, Five", description: "One, two, three, four, five, (hold up fingers one by one, while counting) Once I caught a fish alive. (put hands together and wiggle like a fish) Six, seven, eight, nine, ten, (hold up fingers one by one, while counting) Then I threw it back again. (make throwing motion) Why did you let it go? (hold hands out asking why) Because it bit my finger so. (shake hand, as if hurt) Which finger did it bite? (hold hands out asking why) This little finger on my right. (wiggle pinky finger)", link: "", image: "", category_id: Category.find_by(category: "Talk").id)
Activity.create(title: "Five Little Ocean Friends", description: "Five little ocean friends on the ocean floor, the starfish walks away and now there are four. Four little ocean friends living in the sea, the crab slides away now there are three. Three little ocean friends looking for a clue, “Glub, glub,” said the lobster now there are two. Two little ocean friends not having much fun, off swam the sea horse now there is one. One little octopus sad and all alone, back swims the starfish, back swims the crab, back swims the lobster, back swims the sea horse, and they played in the sea foam, safe in their home.", link: "", image: "", category_id: Category.find_by(category: "Sing").id)

Activity.create(title: "The Snowy Day", description: "by Ezra Jack Keats", link: "", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "One Mitten", description: "by Kristine O'Connell George", link: "", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "Snow! Snow! Snow!", description: "by Lee Harper", link: "", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "Winter Hokey Pokey", description: "You put your mittens in, you take your mittens out. You put your boots in, you take your boots out. You put your hat in, you put your hat out. You put your coat in, you put your coat out", link: "", image: "", category_id: Category.find_by(category: "Sing").id)
Activity.create(title: "Five Little Snowmen", description: "Five little snowmen standing in a row, standing straight and tall in the deep, cold snow. Out came the sun, shining bright and hot all day, and one little snowman melted away. Continue until have no snowmen left...", link: "", image: "", category_id: Category.find_by(category: "Talk").id)


############# STORYTIMES #############

Storytime.create(title: "Nature Storytime", age: 3, genre: "Nature", time: 10)
Storytime.create(title: "Ocean Storytime", age: 5, genre: "Nature", time: 20)
Storytime.create(title: "Snow Storytime", age: 4, genre: "Weather", time: 20)

############# STORYTIME ACTIVITIES FOR NATURE STORYTIME #############

StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Nature Storytime").id, activity_id: Activity.find_by(title: "You Are My Sunshine").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Nature Storytime").id, activity_id: Activity.find_by(title: "What can you see out your window?").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Nature Storytime").id, activity_id: Activity.find_by(title: "These Are My Glasses").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Nature Storytime").id, activity_id: Activity.find_by(title: "The Tiny Seed").id)

StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Ocean Storytime").id, activity_id: Activity.find_by(title: "These Are My Glasses").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Ocean Storytime").id, activity_id: Activity.find_by(title: "I'm the Biggest Thing in the Ocean").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Ocean Storytime").id, activity_id: Activity.find_by(title: "Hooray for Fish").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Ocean Storytime").id, activity_id: Activity.find_by(title: "One, Two, Three, Four, Five").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Ocean Storytime").id, activity_id: Activity.find_by(title: "Five Little Ocean Friends").id)

StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Snow Storytime").id, activity_id: Activity.find_by(title: "These Are My Glasses").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Snow Storytime").id, activity_id: Activity.find_by(title: "The Snowy Day").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Snow Storytime").id, activity_id: Activity.find_by(title: "Winter Hokey Pokey").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Snow Storytime").id, activity_id: Activity.find_by(title: "One Mitten").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Snow Storytime").id, activity_id: Activity.find_by(title: "Five Little Snowmen").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Snow Storytime").id, activity_id: Activity.find_by(title: "Snow! Snow! Snow!").id)

