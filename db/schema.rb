# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111020075837) do

  create_table "bultos", :force => true do |t|
    t.string   "descripcion"
    t.string   "nombre_destinatario"
    t.string   "direccion_envio"
    t.integer  "cod_postal_envio"
    t.string   "telefono_destinatario"
    t.string   "movil_destinatario"
    t.string   "poblacion"
    t.string   "observaciones_entrega"
    t.string   "nombre_facturacion"
    t.string   "nif_facturacion"
    t.string   "direccion_facturacion"
    t.string   "email_facturacion"
    t.decimal  "precio_sin_iva"
    t.decimal  "iva"
    t.decimal  "precio_con_iva"
    t.datetime "fecha_recepcion"
    t.datetime "fecha_entrega"
    t.text     "historial_incidencias"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
