connection: "covid_italy"

# include all the views
include: "/views/**/*.view"


#PARAMS
label: "PJ COVID ITALY"


#CACHE
datagroup: v1_covid_italy_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}
persist_with: v1_covid_italy_default_datagroup


access_grant: province_code_access_grant {
  user_attribute: province_code
  allowed_values: ["007"]
}


# EXPLORES
explore: data_by_province {
  join: national_trends {
    sql_on: ${data_by_province.country} = ${national_trends.country}  AND ${data_by_province.date_date} = ${national_trends.date_date};;
    type: left_outer
    relationship: many_to_many
  }
}

explore: data_by_region {}

explore: national_trends {}
