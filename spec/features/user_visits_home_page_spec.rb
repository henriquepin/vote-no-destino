require 'rails_helper'

feature 'user visits home page' do
  scenario 'successfully' do
    place = Place.new

    visit root_path

    expect(current_path).to eq root_path
    expect(page).to have_content "Bem vindo!"
    expect(page).to have_content "Por favor, escolha seu destino:"
    expect(page).to have_content place.id[0]
    expect(page).to have_content place.id[1]
  end
end
