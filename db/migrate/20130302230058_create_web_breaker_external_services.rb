class CreateWebBreakerExternalServices < ActiveRecord::Migration
  def change
    create_table :web_breaker_external_services do |t|
      t.string :name
      t.string :host
      t.boolean :enabled, default: false

      t.timestamps
    end

    add_index :web_breaker_external_services, :host
  end
end
