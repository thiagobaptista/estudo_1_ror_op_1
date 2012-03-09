#ecoding: utf-8

Dado /^que estou na página inicial$/ do
	visit "/"
end

Dado /^preencho o campo "([^"]*)" com "([^"]*)"$/ do |campo, valor|
	fill_in campo, :with => valor
end

Dado /^preencho o campo "([^"]*)" com "([^"]*)"\.$/ do |campo, valor|
	fill_in campo, :with => valor
end

Dado /^aperto o botão "([^"]*)"$/ do |botao|
	click_button botao
end

Entao /^eu deveria ver "([^"]*)"$/ do |texto|
	page.should have_content(texto)
end