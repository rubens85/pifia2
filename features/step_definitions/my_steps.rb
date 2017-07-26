Given(/^que empezo el juego$/) do
  visit '/' 
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

#When(/^jugador ingrese el numero (\d+)$/) do |numero|
#  fill_in(field, :with => numero)
#end

When(/^jugador ingrese el numero "([^"]*)" en "([^"]*)"$/) do |numero, field|
  fill_in(field, :with => numero)
end





