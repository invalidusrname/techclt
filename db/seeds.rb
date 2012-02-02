# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# [
# ["A"],["B"],["C"],["D"],["E"],["F"],["G"],["H"],["I"],["J"],["K"],["L"],["M"],["N"],["O"],["P"],["Q"],["R"],["S"],["T"],["U"],["V"],["W"],["X"],["Y"],["Z"],
# ["AA"],["BB"],["CC"],["DD"],["EE"],["FF"],["GG"],["HH"],["II"],["JJ"],["KK"],["LL"],["MM"],["NN"],["OO"],["PP"],["QQ"],["RR"],["SS"],["TT"],["UU"],["VV"],["WW"],["XX"],["YY"],["ZZ"]
# ].each do |h|
#  Letter.create!(:letter_text => h[0])
# end

[
  ["Hacker"],["Founder"],["Hustler"],["Developer"],["Designer"],["Business Development"],["CEO"],["CTO"],
  ["Maker"],["Javascript"],["Ruby"],["Python"],["PHP"],["Evangelist"],["UX"],["Mobile"],
  ["Marketing"],["Community Manager"],["VC"],["Angel Investor"]
].each do |h|
  Tag.create!(:name => h[0])
end

# the code below needs to have CarrierWave attachment and Tag attributes written and tested
# do this before removing the first_names = [] reset line
first_names = [
    "Aaliyah",
    "Aaron",
    "Abigail",
    "Adam",
    "Addison",
    "Adrian",
    "Aidan",
    "Aiden",
    "Alex",
    "Alexa",
    "Alexander",
    "Alexandra",
    "Alexis",
    "Allison",
    "Alyssa",
    "Amelia",
    "Andrea",
    "Andrew",
    "Angel",
    "Angelina",
    "Anna",
    "Anthony",
    "Ariana",
    "Arianna",
    "Ashley",
    "Aubrey",
    "Audrey",
    "Austin",
    "Autumn",
    "Ava",
    "Avery",
    "Ayden",
    "Bailey",
    "Bella",
    "Benjamin",
    "Blake",
    "Brandon",
    "Brayden",
    "Brian",
    "Brianna",
    "Brody",
    "Brooke",
    "Brooklyn",
    "Bryan",
    "Caleb",
    "Cameron",
    "Camila",
    "Carlos",
    "Caroline",
    "Carson",
    "Carter",
    "Charles",
    "Charlotte",
    "Chase",
    "Chloe",
    "Christian",
    "Christopher",
    "Claire",
    "Cole",
    "Colton",
    "Connor",
    "Cooper",
    "Daniel",
    "David",
    "Destiny",
    "Diego",
    "Dominic",
    "Dylan",
    "Eli",
    "Elijah",
    "Elizabeth",
    "Ella",
    "Emily",
    "Emma",
    "Eric",
    "Ethan",
    "Eva",
    "Evan",
    "Evelyn",
    "Faith",
    "Gabriel",
    "Gabriella",
    "Gabrielle",
    "Gavin",
    "Genesis",
    "Gianna",
    "Grace",
    "Hailey",
    "Hannah",
    "Hayden",
    "Henry",
    "Hunter",
    "Ian",
    "Isaac",
    "Isabella",
    "Isaiah",
    "Jack",
    "Jackson",
    "Jacob",
    "Jaden",
    "James",
    "Jasmine",
    "Jason",
    "Jaxon",
    "Jayden",
    "Jeremiah",
    "Jessica",
    "Jesus",
    "Jocelyn",
    "John",
    "Jonathan",
    "Jordan",
    "Jose",
    "Joseph",
    "Joshua",
    "Josiah",
    "Juan",
    "Julia",
    "Julian",
    "Justin",
    "Kaitlyn",
    "Katherine",
    "Kayla",
    "Kaylee",
    "Kevin",
    "Khloe",
    "Kimberly",
    "Kylie",
    "Landon",
    "Lauren",
    "Layla",
    "Leah",
    "Levi",
    "Liam",
    "Lillian",
    "Lily",
    "Logan",
    "Lucas",
    "Lucy",
    "Luis",
    "Luke",
    "Mackenzie",
    "Madeline",
    "Madelyn",
    "Madison",
    "Makayla",
    "Maria",
    "Mariah",
    "Mason",
    "Matthew",
    "Max",
    "Maya",
    "Melanie",
    "Mia",
    "Michael",
    "Molly",
    "Morgan",
    "Naomi",
    "Natalia",
    "Natalie",
    "Nathan",
    "Nathaniel",
    "Nevaeh",
    "Nicholas",
    "Noah",
    "Oliver",
    "Olivia",
    "Owen",
    "Paige",
    "Parker",
    "Payton",
    "Peyton",
    "Rachel",
    "Riley",
    "Robert",
    "Ryan",
    "Samantha",
    "Samuel",
    "Sarah",
    "Savannah",
    "Sebastian",
    "Serenity",
    "Sofia",
    "Sophia",
    "Sophie",
    "Stella",
    "Sydney",
    "Taylor",
    "Thomas",
    "Trinity",
    "Tristan",
    "Tyler",
    "Valeria",
    "Victoria",
    "William",
    "Wyatt",
    "Xavier",
    "Zoe",
    "Zachary",
    "Zoey"
]
first_names = [ ] # makes first_names zero length - remove this line to test creating users during seed MJL
first_names.each do |fn|
  User.create! do |u|
    u.first_name =  fn
    u.last_name = "Miller"
    u.password = "test"
    u.password_confirmation = "test"
    u.website = "http://google.com?q=" + fn
    u.company_website = "http://duckduckgo.com/?q=" + fn
    u.show_email = true
    u.remember_me = true
    u.invitation_limit = 100
    u.bio = <<-eos
        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
when an unknown printer took a galley of type and scrambled it to make a type specimen book.
It has survived not only five centuries, but also the leap into electronic typesetting,
remaining essentially unchanged. It was popularised in the 1960s
    eos
    #u.image
    #u.photo
    #u.photo_file_name
    #u.photo_content_type
    #u.photo_file_size
    #u.photo_updated_at
    # tags
    #u.tag_tokens
    #u.tag_ids

      #           :last_name, :first_name, :role, :company, :company_website, :website, :twitter, :show_email, :visible, :title, :bio,
       #           :github, :dribble, :linkedin, :forrst, :stackoverflow,

  end

end
