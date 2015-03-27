class ForceValidAssigneeOnTickets < ActiveRecord::Migration
  def up
    execute "ALTER TABLE tickets ADD CONSTRAINT assignee_fk FOREIGN KEY (assignee_id) REFERENCES users (id)"
  end

  def down
    # no-op
  end
end
