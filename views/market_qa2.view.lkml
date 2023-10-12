# The name of this view in Looker is "Market Qa2"
view: market_qa2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ui_test.market_qa2 ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Channel" in Explore.

  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }

  dimension: coupon_mailing_list {
    type: number
    sql: ${TABLE}.COUPON_MAILING_LIST ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_coupon_mailing_list {
    type: sum
    sql: ${coupon_mailing_list} ;;  }
  measure: average_coupon_mailing_list {
    type: average
    sql: ${coupon_mailing_list} ;;  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CUSTOMER_ID ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}.TRANSACTION_ID ;;
  }
  measure: count {
    type: count
  }
}
