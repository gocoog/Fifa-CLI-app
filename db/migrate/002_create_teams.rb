class CreateTeams < ActiveRecord::Migration[5.1]
    def change
        create_table :teams do |t|
            t.string :team_name
            t.string :league
        end
    end
end