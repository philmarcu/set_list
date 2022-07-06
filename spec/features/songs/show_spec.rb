require 'rails_helper'

RSpec.describe 'songs show page ' do
  # As a visitor   ---> user story
  # When I visit /songs/1
  # I see that song's title and the artist
  # And only that, no other songs in the database

  it 'displays song title' do
    artist = Artist.create(name: "Ohbliv")
    song = artist.songs.create!(title: "Strange Heart", length: 323, play_count: 1202)
    song2 = artist.songs.create!(title: "Be True", length: 207, play_count: 1061)
    
    visit "/songs/#{song.id}"
    # same as saying visit localhost:3000/songs/1 (the 1st song)

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song2.title)
  end


  it 'displays name of the artist of song' do
    artist = Artist.create(name: "Ohbliv")
    song = artist.songs.create!(title: "Strange Heart", length: 323, play_count: 1202)
    song2 = artist.songs.create!(title: "Be True", length: 207, play_count: 1061)

    visit "/songs/#{song.id}"
    save_and_open_page

    expect(page).to have_content(artist.name)
  end
end