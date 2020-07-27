class CreateContracts < ActiveRecord::Migration[5.1]
    def change
        create_table :contracts do |t|
            t.integer :player_id
            t.integer :team_id
            t.integer :amount
            t.string :date
        end
    end

end