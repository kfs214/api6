class RemoveTimestampsFromAnimal < ActiveRecord::Migration[6.1]
  def change
    remove_timestamps(:animals)
  end
end
