# include: "/views/national_trends.view"

view: data_by_province {

  sql_table_name: `covid_italy.data_by_province`;;
  # label: "Italy Data By Province"

  # extends: [national_trends]





  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;

  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: location_geom {
    type: string
    sql: ${TABLE}.location_geom ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension: province_abbreviation {
    type: string
    sql: ${TABLE}.province_abbreviation ;;
  }

  dimension: province_code {
    type: string
    sql: ${TABLE}.province_code ;;
  }

  dimension: province_name {
    type: string
    sql: ${TABLE}.province_name ;;
  }

  dimension: region_code {
    type: string
    sql: ${TABLE}.region_code ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}.region_name ;;
  }

  dimension: confirmed_cases {
    type: number
    sql: ${TABLE}.confirmed_cases ;;
  }




# MESURES
  # measure: count {
  #   type: count
  #   drill_fields: [region_name, province_name]
  # }

  # measure: Total_province_confirmed_cases {
  #   type: sum
  #   sql: ${TABLE}.confirmed_cases ;;
  # }

  # measure: Total_national_confirmed_case {
  #   type: sum
  #   sql: ${national_trends.total_confirmed_cases}  ;;
  #   required_access_grants: [country_access_grant]
  # }


}
