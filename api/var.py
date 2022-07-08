
# variables
schema_bd = 'musicpro'

view_product_list = 'view_product_list'
view_guitar_list = 'view_products_guitar'
view_bass_list = 'view_products_bass'
view_piano_list = 'view_products_piano'
view_acoustic_drums_list = 'view_products_acoustic_drums'
view_electric_batteries_list = 'view_products_electric_batteries'
view_bolster_list = 'view_products_bolster'
view_boxes_list = 'view_products_boxes'
view_headset_list = 'view_products_headset'
view_monitor_list = 'view_products_monitor'
view_loudspeakers_list = 'view_products_loudspeakers'
view_wires_list = 'view_products_wires'
view_microphone_list = 'view_products_microphone'
view_interface_list = 'view_products_interface'
view_mixer_list = 'view_products_mixer'

# query products list
query_sql_list = """
  SELECT  sku_code,
          name_product,
          name_type,
          name_subtype,
          name_brand,
          name_color,
          name_rope_type,
          name_material,
          dimensions,
          not_include,
          n_keys,
          voltage,
          type_conection,
          price,
          discount
  FROM  {}.{}
  """
