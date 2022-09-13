connection: "looker_tabla_poli"

# include all the views
include: "/views/**/*.view"
include: "/dashboard/poli-poc.dashboard.lookml"

datagroup: poc_poli_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: poc_poli_default_datagroup

explore: fact_matriculados {
  access_filter: {
    field: genero
    user_attribute: atributo_preuba
  }
}
