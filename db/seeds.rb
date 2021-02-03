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

amelia = User.create(username: "Amelia", name: "Amelia")
laura = User.create(username: "Laura", name: "Laura")

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

############# STORYTIMES #############

Storytime.create(title: "Nature Storytime", age: 3, genre: "Nature", time: 10)

############# STORYTIME ACTIVITIES FOR NATURE STORYTIME #############

StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Nature Storytime").id, activity_id: Activity.find_by(title: "You Are My Sunshine").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Nature Storytime").id, activity_id: Activity.find_by(title: "What can you see out your window?").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Nature Storytime").id, activity_id: Activity.find_by(title: "These Are My Glasses").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Nature Storytime").id, activity_id: Activity.find_by(title: "The Tiny Seed").id)


