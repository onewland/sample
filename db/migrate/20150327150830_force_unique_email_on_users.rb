class ForceUniqueEmailOnUsers < ActiveRecord::Migration
  def up
    execute "ALTER TABLE users ADD UNIQUE(email)"
  end

  def down
    # no-op
  end
end
