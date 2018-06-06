class AddUniqueConstraintToVotes < ActiveRecord::Migration
  def change
    add_index :votes, [:voter_type, :voter_id, :votable_type, :votable_id], :unique => true, name: "unique_voter_votable_vote"
  end
end
