puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

freebie_array=["Socks", "Mug", "Bobble Head", "Pen", "Frisbee", "Mouse Pad", "T-Shirt"]

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

30.times do
    random_dev = rand(1..4)
    random_company = rand(1..4)
    random_freebie = rand(0..6)
    Freebie.create(
        item_name: freebie_array[random_freebie],
        value: rand(1..100),
        dev_id: random_dev,
        company_id: random_company
    )
end

puts "Seeding done!"
