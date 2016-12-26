require 'rails_helper'

feature 'user visits home page' do
  scenario 'successfully' do
    place = Place.create(name: "São Paulo")
    place2 = Place.create(name: "Londres")

    visit root_path

    expect(current_path).to eq root_path
    expect(page).to have_content "Bem vindo!"
    expect(page).to have_content "Por favor, escolha seu destino:"
    expect(page).to have_content place.name
    expect(page).to have_content place2.name
  end
end
