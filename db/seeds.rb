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

Activity.create(title: "You Are My Sunshine", description: "You are my sunshine, my only sunshine. You make me happy when skies are gray. You'll never know dear, how much I love you. Please don't take my sunshine away.", link: "https://www.youtube.com/embed/hPv9vMtbaqM", image: "", category_id: Category.find_by(category: "Sing").id)
Activity.create(title: "What can you see out your window?", description: "Take a couple minutes and look out the window. Name things that are related to the storytime topic. Try to use repetitive language e.g. 'Look! A red bird. I see a red bird. Do you see a red bird?", link: "https://www.youtube.com/embed/tSAKzVP2IGk", image: "", category_id: Category.find_by(category: "Talk").id)
Activity.create(title: "These Are My Glasses", description: "These are my glasses, this is my book. I put on my glasses and open up the book. Now I read, read, read, and I look, look, look. I put down my glasses, and close up the book.", link: "https://www.youtube.com/embed/9dvl1oa5AVc", image: "", category_id: Category.find_by(category: "Sing").id)
Activity.create(title: "The Tiny Seed", description: "by Eric Carle", link: "https://www.youtube.com/embed/42N--MYQFzs", image: "", category_id: Category.find_by(category: "Read").id)

Activity.create(title: "I'm the Biggest Thing in the Ocean", description: "by Kevin Sherry", link: "https://www.youtube.com/embed/IixelHey-LE", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "Hooray for Fish", description: "by Lucy Cousins", link: "https://www.youtube.com/embed/-C2vlVHVnes", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "One, Two, Three, Four, Five", description: "One, two, three, four, five, (hold up fingers one by one, while counting) Once I caught a fish alive. (put hands together and wiggle like a fish) Six, seven, eight, nine, ten, (hold up fingers one by one, while counting) Then I threw it back again. (make throwing motion) Why did you let it go? (hold hands out asking why) Because it bit my finger so. (shake hand, as if hurt) Which finger did it bite? (hold hands out asking why) This little finger on my right. (wiggle pinky finger)", link: "https://www.youtube.com/embed/VWWEUChKo6s", image: "", category_id: Category.find_by(category: "Talk").id)
Activity.create(title: "Five Little Ocean Friends", description: "Five little ocean friends on the ocean floor, the starfish walks away and now there are four. Four little ocean friends living in the sea, the crab slides away now there are three. Three little ocean friends looking for a clue, “Glub, glub,” said the lobster now there are two. Two little ocean friends not having much fun, off swam the sea horse now there is one. One little octopus sad and all alone, back swims the starfish, back swims the crab, back swims the lobster, back swims the sea horse, and they played in the sea foam, safe in their home.", link: "https://www.youtube.com/embed/xA_adw40blA", image: "", category_id: Category.find_by(category: "Sing").id)

Activity.create(title: "The Snowy Day", description: "by Ezra Jack Keats", link: "https://www.youtube.com/embed/FmZCQfeWjeQ", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "One Mitten", description: "by Kristine O'Connell George", link: "https://www.youtube.com/embed/1_TvCcPJpMI", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "Snow! Snow! Snow!", description: "by Lee Harper", link: "https://www.youtube.com/embed/vYUWh-woHj4", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "Winter Hokey Pokey", description: "You put your mittens in, you take your mittens out. You put your boots in, you take your boots out. You put your hat in, you put your hat out. You put your coat in, you put your coat out", link: "https://www.youtube.com/embed/uBYNtMyN_6E", image: "", category_id: Category.find_by(category: "Sing").id)
Activity.create(title: "Five Little Snowmen", description: "Five little snowmen standing in a row, standing straight and tall in the deep, cold snow. Out came the sun, shining bright and hot all day, and one little snowman melted away. Continue until have no snowmen left...", link: "https://www.youtube.com/embed/MRQvu18LCgo", image: "", category_id: Category.find_by(category: "Talk").id)

Activity.create(title: "LMNO Peas", description: "by Keith Baker", link: "https://www.youtube.com/embed/6b9iW6nD77Q", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "Chicka Chicka Boom Boom", description: "by Bill Martin", link: "https://www.youtube.com/embed/VdrTXRD090U", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "Alphabet Beat", description: "First clap your hands. Then stomp your feet. Everybody do the alphabet beat. Apple, Apple, Apple – a – a – a, Apple, Apple, Apple – a – a – a, Wave your arms high. Swing your arms low. The alphabet beat is the way to go. Blue, Blue, Blue – b – b – b Blue, Blue, Blue – b – b – b Move to the left. Move to the right. The alphabet beat is way out of sight. Car, Car, Car – c – c – c Car, Car, Car – c – c – c Now give a high five to a nearby friend. The alphabet beat has come to the end!", link: "https://www.youtube.com/embed/783EsrHchXA", image: "", category_id: Category.find_by(category: "Sing").id)
Activity.create(title: "Alligators all Around an Alphabet", description: "by Maurice Sendak", link: "https://www.youtube.com/embed/iAMxParjeUU", image: "", category_id: Category.find_by(category: "Read").id)

Activity.create(title: "Ten Little Fingers and Ten Little Toes", description: "by Mem Fox", link: "https://www.youtube.com/embed/23BD43s7iFA", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "The Baby Goes Beep", description: "by Rebecca O'Connell", link: "https://www.youtube.com/embed/63YFwZt1myw", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "Pat-a-Cake", description: "Pat-a-cake, pat-a-cake, baker’s man. Bake me a cake as fast as you can. Roll it, and pat it, and mark it with a B. And put it in the oven for baby and me", link: "https://www.youtube.com/embed/jdg50KzCR9w", image: "", category_id: Category.find_by(category: "Sing").id)

Activity.create(title: "Llama Llama Red Pajama", description: "by Anna Dewdney", link: "https://www.youtube.com/embed/DUWU58pVcwM", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "Cornelius P. Mud, Are You Ready for Bed?", description: "by Barney Saltzburg", link: "https://www.youtube.com/embed/8QjD5KYHe2c", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "Ten in the Bed", description: "There were ten in the bed (Hold up ten fingers) and the little one said, Roll over, roll over! (Make rolling motion) So they are rolled over and one fell out. (Hold up one finger & surprised face) // Count down until 1 // There was one in the bed (Hold up one finger) and the little one said, I’ve got it all to myself. (Spread out arms)", link: "https://www.youtube.com/embed/TdDypyS_5zE", image: "", category_id: Category.find_by(category: "Sing").id)

Activity.create(title: "Orange Pear Apple Bear", description: "by Emily Gravett", link: "https://www.youtube.com/embed/L0tYX9tPq_0", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "Teddy Bear, Teddy Bear", description: "Teddy Bear, Teddy Bear, turn around, Teddy Bear, Teddy Bear, touch the ground. Teddy Bear, Teddy Bear, reach up high, Teddy Bear, Teddy Bear, touch the sky. Teddy Bear, Teddy Bear, touch your knees, Teddy Bear, Teddy Bear, sit down please", link: "https://www.youtube.com/embed/Tu_n94Wp3rg", image: "", category_id: Category.find_by(category: "Sing").id)
Activity.create(title: "Old Bear", description: "by Kevin Henkes", link: "https://www.youtube.com/embed/kjhzDxQEffw", image: "", category_id: Category.find_by(category: "Read").id)

Activity.create(title: "A Birthday for Cow", description: "by Jan Thomas", link: "https://www.youtube.com/embed/ZYvP987Ndrc", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "The Birthday Box", description: "by Leslie Patricelli", link: "https://www.youtube.com/embed/bwG0yV0xDMQ", image: "", category_id: Category.find_by(category: "Read").id)
Activity.create(title: "Five Candles", description: "Five candles on a birthday cake, Five, and not one more. You may blow one candle out, And that leaves four! (There for all to see / three; Standing straight and true / two; Helping us have fun / one; We know its task is done / none)", link: "https://www.youtube.com/embed/xGhfRzkud5Q", image: "", category_id: Category.find_by(category: "Sing").id)



############# STORYTIMES #############

Storytime.create(title: "Alphabet Storytime", age: 3, genre: "Alphabet", time: 15)
Storytime.create(title: "Baby Storytime", age: 1, genre: "About Me", time: 10)
Storytime.create(title: "Bedtime Storytime", age: 2, genre: "Times of Day", time: 15)
Storytime.create(title: "Bear Storytime", age: 4, genre: "Animals", time: 25)
Storytime.create(title: "Birthday Storytime", age: 5, genre: "Important Days", time: 20)
Storytime.create(title: "Bug Storytime", age: 3, genre: "Animals", time: 15)
Storytime.create(title: "Counting Storytime", age: 4, genre: "Counting", time: 20)
Storytime.create(title: "Dancing Storytime", age: 2, genre: "Movement", time: 15)
Storytime.create(title: "Dinosaur Storytime", age: 3, genre: "Animals", time: 15)
Storytime.create(title: "Emotions Storytime", age: 3, genre: "About Me", time: 15)
Storytime.create(title: "Friends Storytime", age: 5, genre: "About Me", time: 20)
Storytime.create(title: "Garden Storytime", age: 2, genre: "Nature", time: 15)
Storytime.create(title: "Monster Storytime", age: 4, genre: "Animals", time: 20)
Storytime.create(title: "Nature Storytime", age: 3, genre: "Nature", time: 10)
Storytime.create(title: "Ocean Storytime", age: 5, genre: "Nature", time: 20)
Storytime.create(title: "School Storytime", age: 4, genre: "Important Days", time: 20)
Storytime.create(title: "Seasons Storytime", age: 2, genre: "Nature", time: 15)
Storytime.create(title: "Snow Storytime", age: 4, genre: "Weather", time: 20)
Storytime.create(title: "Transportation Storytime", age: 3, genre: "Transportation", time: 15)
Storytime.create(title: "Trees Storytime", age: 2, genre: "Nature", time: 15)



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

StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Alphabet Storytime").id, activity_id: Activity.find_by(title: "LMNO Peas").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Alphabet Storytime").id, activity_id: Activity.find_by(title: "Chicka Chicka Boom Boom").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Alphabet Storytime").id, activity_id: Activity.find_by(title: "Alphabet Beat").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Alphabet Storytime").id, activity_id: Activity.find_by(title: "Alligators all Around an Alphabet").id)

StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Baby Storytime").id, activity_id: Activity.find_by(title: "Ten Little Fingers and Ten Little Toes").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Baby Storytime").id, activity_id: Activity.find_by(title: "The Baby Goes Beep").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Baby Storytime").id, activity_id: Activity.find_by(title: "Pat-a-Cake").id)

StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Bedtime Storytime").id, activity_id: Activity.find_by(title: "Llama Llama Red Pajama").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Bedtime Storytime").id, activity_id: Activity.find_by(title: "Cornelius P. Mud, Are You Ready for Bed?").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Bedtime Storytime").id, activity_id: Activity.find_by(title: "Ten in the Bed").id)

StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Bear Storytime").id, activity_id: Activity.find_by(title: "Orange Pear Apple Bear").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Bear Storytime").id, activity_id: Activity.find_by(title: "Teddy Bear, Teddy Bear").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Bear Storytime").id, activity_id: Activity.find_by(title: "Old Bear").id)

StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Birthday Storytime").id, activity_id: Activity.find_by(title: "A Birthday for Cow").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Birthday Storytime").id, activity_id: Activity.find_by(title: "The Birthday Box").id)
StorytimeActivity.create(storytime_id: Storytime.find_by(title: "Birthday Storytime").id, activity_id: Activity.find_by(title: "Five Candles").id)



