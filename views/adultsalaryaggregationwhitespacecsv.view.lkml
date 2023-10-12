# The name of this view in Looker is "Adultsalaryaggregationwhitespacecsv"
view: adultsalaryaggregationwhitespacecsv {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ui_test.adultsalaryaggregationwhitespacecsv ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Age" in Explore.

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_age {
    type: sum
    sql: ${age} ;;  }
  measure: average_age {
    type: average
    sql: ${age} ;;  }

  dimension: education_num {
    type: number
    sql: ${TABLE}.`education num` ;;
  }

  dimension: generated_age_bin {
    type: string
    sql: ${TABLE}.`generated age bin` ;;
  }

  dimension: generated_hours_per_week_label {
    type: string
    sql: ${TABLE}.`generated hours per week label` ;;
  }

  dimension: hours_per_week {
    type: number
    sql: ${TABLE}.`hours per week` ;;
  }

  dimension: work_class {
    type: string
    sql: ${TABLE}.`work class` ;;
  }
  measure: count {
    type: count
  }
}
