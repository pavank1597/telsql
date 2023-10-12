# The name of this view in Looker is "Salary with Currency"
view: salary_with_currency {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ui_test.salary_with_currency ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Capital Gain" in Explore.

  dimension: capital_gain {
    type: string
    sql: ${TABLE}.capital_gain ;;
  }

  dimension: capital_loss {
    type: number
    sql: ${TABLE}.capital_loss ;;
  }

  dimension: fnlwgt {
    type: number
    sql: ${TABLE}.fnlwgt ;;
  }

  dimension: hours_per_week {
    type: number
    sql: ${TABLE}.hours_per_week ;;
  }

  dimension: long_number {
    type: number
    sql: ${TABLE}.long_number ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_long_number {
    type: sum
    sql: ${long_number} ;;  }
  measure: average_long_number {
    type: average
    sql: ${long_number} ;;  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.occupation ;;
  }

  dimension: row_id {
    type: number
    sql: ${TABLE}.row_id ;;
  }
  measure: count {
    type: count
  }
}
