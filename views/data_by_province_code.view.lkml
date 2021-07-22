# view: data_by_province_code {

  # derived_table: {
  #   sql: SELECT province_code, SUM(confirmed_cases) AS total_confirmed_cases
  #         FROM `looker-test-309913.covid_italy.data_by_province`
  #         GROUP BY 1 ;;
  # }

  # dimension: province_code {
  #   type: string
  #   primary_key: yes
  #   sql: ${TABLE}.province_code ;;
  #   # link: {
  #   #   label: "Google"
  #   #   url: "http://www.google.com/search?q= Italy {{ value }} province"
  #   # }
  # }

  # measure: total_confirmed_cases {
  #   type: sum
  #   sql: ${TABLE}.total_confirmed_cases ;;


  # }


# }
