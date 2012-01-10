Given /^that project has a ticket:$/ do |table|
  table.hashes.each do |attributes|
    @project.tickets.create!(attributes)
  end
end

Given /^"([^"]*)" has created a ticket for this project:$/ do |email, table|
  user = User.find_by_email!(email)
  table.hashes.each do |attributes|
    attributes = attributes.merge!(:user => user)
    @project.tickets.create!(attributes)
  end
end
