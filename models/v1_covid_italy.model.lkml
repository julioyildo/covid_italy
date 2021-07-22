connection: "covid_italy"

# include all the views
include: "/views/**/*.view"

label: "PJ COVID ITALY"


explore: data_by_region {}

explore: national_trends {}


explore: data_by_province {}




















#PARAMS
# label: "PJ COVID ITALY"









# HIDE FIELDS
# access_grant: country_access_grant {
#   user_attribute: user_role
#   allowed_values: ["Manager", "data_services"]
# }


# EXPLORES
# explore: data_by_province {
  #JOINS
  # join: national_trends {
  #   sql_on: ${data_by_province.country} = ${national_trends.country}  AND ${data_by_province.date_date} = ${national_trends.date_date};;
  #   type: left_outer
  #   relationship: many_to_one
  # }


  # PARAMS
  # view_label: "Data By Province "
  # description:  "Covid data by Italy province joined to National_trends"

  # persist_for: "30 minutes"

  # access_filter: {
  #   field: data_by_province.province_code
  #   user_attribute: user_province_code
  # }



# }



# explore: data_by_region {
# }

# explore: national_trends {}


#DERIVED TABLE
# explore: data_by_province_code {}
