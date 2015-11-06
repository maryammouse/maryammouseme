class AddOwnerToComments < ActiveRecord::Migration
  def up
    execute " ALTER TABLE comments
              ADD COLUMN owner text NOT NULL;
    "
  end
  def down
    execute " ALTER TABLE comments
              DROP COLUMN IF EXISTS owner;
    "
  end
end
