class CreateBultos < ActiveRecord::Migration
  def self.up
    create_table :bultos do |t|
      t.string :descripcion
      t.string :nombre_destinatario
      t.string :direccion_envio
      t.integer :cod_postal_envio
      t.string :telefono_destinatario
      t.string :movil_destinatario
      t.string :poblacion
      t.string :observaciones_entrega
      t.string :nombre_facturacion
      t.string :nif_facturacion
      t.string :direccion_facturacion
      t.string :email_facturacion
      t.string :observaciones_entrega
      t.decimal :precio_sin_iva
      t.decimal :iva
      t.decimal :precio_con_iva
      t.datetime :fecha_recepcion
      t.datetime :fecha_entrega
      t.text :historial_incidencias

      t.timestamps
    end
  end

  def self.down
    drop_table :bultos
  end
end
