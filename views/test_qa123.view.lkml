# The name of this view in Looker is "Test Qa123"
view: test_qa123 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ui_test.test_qa123 ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Avg Age Entree" in Explore.

  dimension: avg_age_entree {
    type: number
    sql: ${TABLE}.avg_age_entree ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_avg_age_entree {
    type: sum
    sql: ${avg_age_entree} ;;  }
  measure: average_avg_age_entree {
    type: average
    sql: ${avg_age_entree} ;;  }

  dimension: avg_capital_gain {
    type: number
    sql: ${TABLE}.avg_capital_gain ;;
  }

  dimension: avg_capital_loss {
    type: number
    sql: ${TABLE}.avg_capital_loss ;;
  }

  dimension: avg_of_hours_per_week {
    type: number
    sql: ${TABLE}.avg_of_hours_per_week ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.occupation ;;
  }
  measure: count {
    type: count
  }
}
