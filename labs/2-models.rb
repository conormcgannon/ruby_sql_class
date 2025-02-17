# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file



# 2. insert 1-2 rows in salespeople table.

new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Conor"
new_salesperson["last_name"] = "McGannon"
new_salesperson["email"] = "conor@mcgannon.com"
new_salesperson.save

new_salesperson = Salesperson.new
new_salesperson["first_name"] = "John"
new_salesperson["last_name"] = "Doe"
new_salesperson["email"] = "John@doe.com"
new_salesperson.save

#puts new_salesperson.inspect
# 3. write code to display how many salespeople rows are in the database
puts "There are #{Salesperson.all.count} salespeople"
# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

conor = Salesperson.find_by ({"first_name" => "Conor"}) #assigns conor's details to "conor"
conor["email"] = "conmcgannon@yahoo.com"
conor.save
#puts conor.inspect


# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
first_name = conor["first_name"] #first_name = conor's assigned first name
last_name = conor["last_name"]
name = "#{first_name} #{last_name}"
#puts name

#write a loop
salespeople = Salesperson.all

for boing in salespeople
    first_name = boing["first_name"]
    last_name = boing["last_name"]
    name = "#{first_name} #{last_name}"
    puts name
end
