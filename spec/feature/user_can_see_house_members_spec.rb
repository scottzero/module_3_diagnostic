require 'rails_helper'
# As a user,
# When I visit "/"
# And I Select "Griffindor" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see a total of the number of members for that house. (18 for Griffindor)
# Then I should see a list of 18 members
#
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)
RSpec.describe "as a user searching house members", type: :feature do
    it "shows me a list of house members with details and total count" do

    visit "/"

    select "Gryffindor", from: :house

    click_on 'Search For Members'

    expect(current_path).to eq(search_path)

    expect(page).to have_content("40")
    expect(page).to have_content(["Katie Bell",
 "Cuthbert Binns",
 "Sirius Black",
 "Lavender Brown",
 "Colin Creevey",
 "Dennis Creevey",
 "Aberforth Dumbledore",
 "Albus Dumbledore",
 "Seamus Finnigan",
 "Hermione Granger",
 "Godric Gryffindor",
 "Rubeus Hagrid",
 "Angelina Johnson",
 "Lee Jordan",
 "Alice Longbottom",
 "Frank Longbottom",
 "Augusta Longbottom",
 "Neville Longbottom",
 "Remus Lupin",
 "Parvati Patil",
 "Peter Pettigrew",
 "Harry Potter",
 "James Potter I",
 "Lily J. Potter",
 "Demelza Robins",
 "Alicia Spinnet",
 "Dean Thomas",
 "Romilda Vane",
 "Arthur Weasley",
 "William Weasley",
 "Charles Weasley",
 "Fred Weasley",
 "George Weasley",
 "Ginevra Weasley",
 "Molly Weasley",
 "Percy Weasley",
 "Ronald Weasley",
 "Oliver Wood",
 "Cadogan",
 "Nicholas de Mimsy-Porpington"])
    end
  end
