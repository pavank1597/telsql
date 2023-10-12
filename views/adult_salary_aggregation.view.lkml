# The name of this view in Looker is "Adult Salary Aggregation"
view: adult_salary_aggregation {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ui_test.adult_salary_aggregation ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Education Num" in Explore.

  dimension: education_num {
    type: number
    sql: ${TABLE}.education_num ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_education_num {
    type: sum
    sql: ${education_num} ;;  }
  measure: average_education_num {
    type: average
    sql: ${education_num} ;;  }

  dimension: generated_age_bin {
    type: string
    sql: ${TABLE}.generated_age_bin ;;
  }

  dimension: generated_hours_per_week_label {
    type: string
    sql: ${TABLE}.generated_hours_per_week_label ;;
  }

  dimension: hours_per_week {
    type: number
    sql: ${TABLE}.hours_per_week ;;
  }

  dimension: workclass {
    type: string
    sql: ${TABLE}.workclass ;;
  }
  measure: count {
    type: count
  }
}
