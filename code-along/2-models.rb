# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

puts "There are #{Company.all.count} companies" #counts how many companies there are in the Company file

# 2. insert new rows in companies table

new_company = Company.new
puts new_company.inspect
new_company ["company_name"] = "Apple"
new_company ["city"] = "Cupertino"
new_company["state"] = "CA"
new_company ["url"] = "apple.com"

new_company.save

puts new_company.inspect
puts "There are #{Company.all.count} companies"

new_company2 = Company.new
new_company2 ["company_name"] = "Amazon"
new_company2 ["city"] = "Seattle"
new_company2 ["state"] = "WA"
new_company2.save

puts new_company.inspect
puts "There are #{Company.all.count} companies"

new_company3 = Company.new
new_company3 ["company_name"] = "Oura"
new_company3 ["city"] = "San Francisco"
new_company3 ["state"] = "CA"
new_company3.save

puts new_company.inspect
puts "There are #{Company.all.count} companies"

# 3. query companies table to find all row with California company

cali_companies = Company.where({"state" => "CA"})
#puts cali_companies.inspect
puts "California companies: #{cali_companies.count}"

# 4. query companies table to find single row for Apple

apple = Company.find_by({"company_name" => "Apple"}) #uses find_by to find a specific thing (instead of "where")

#puts apple.inspect

# 5. read a row's column value

apple_url = apple["url"]
puts apple_url

# 6. update a row's column value

oura = Company.find_by ({"company_name" => "Oura"})
oura["url"] = "oura.com"
oura.save
puts oura.inspect


# 7. delete a row

oura.destroy
puts "California companies: #{cali_companies.count}"