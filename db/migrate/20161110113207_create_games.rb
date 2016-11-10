class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :aliases
      t.string :api_detail_url
      t.string :characters
      t.string :concepts
      t.string :date_added
      t.string :date_last_updated
      t.string :deck
      t.string :description
      t.string :developers
      t.string :expected_release_day
      t.string :expected_release_month
      t.string :expected_release_quarter
      t.string :expected_release_year
      t.string :first_appearance_characters
      t.string :first_appearance_concepts
      t.string :first_appearance_locations
      t.string :first_appearance_objects
      t.string :first_appearance_people
      t.string :franchises
      t.string :genres
      t.string :game_id
      t.string :image
      t.string :images
      t.string :killed_characters
      t.string :locations
      t.string :name
      t.string :number_of_user_reviews
      t.string :objects
      t.string :original_game_rating
      t.string :original_release_date
      t.string :people
      t.string :platforms
      t.string :publishers
      t.string :releases
      t.string :resource_type
      t.string :reviews
      t.string :similar_games
      t.string :site_detail_url
      t.string :themes
      t.string :videos

      t.timestamps(null: false)
    end
  end
end
