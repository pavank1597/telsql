# The name of this view in Looker is "Transactions1"
view: transactions1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ui_test.transactions1 ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Brands" in Explore.

  dimension: brands {
    type: string
    sql: ${TABLE}.BRANDS ;;
  }

  dimension: brandss {
    type: string
    sql: ${TABLE}.brandss ;;
  }

  dimension: competition_distance {
    type: number
    sql: ${TABLE}.COMPETITION_DISTANCE ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CUSTOMER_ID ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATE ;;
  }

  dimension: median_cont {
    type: number
    sql: ${TABLE}.MedianCont ;;
  }

  dimension: number_of_records {
    type: number
    sql: ${TABLE}.NUMBER_OF_RECORDS ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number_of_records {
    type: sum
    sql: ${number_of_records} ;;  }
  measure: average_number_of_records {
    type: average
    sql: ${number_of_records} ;;  }

  dimension: region_customer {
    type: string
    sql: ${TABLE}.REGION_CUSTOMER ;;
  }

  dimension: satisfaction_score {
    type: number
    sql: ${TABLE}.SATISFACTION_SCORE ;;
  }

  dimension: seasonal_buyer {
    type: number
    sql: ${TABLE}.SEASONAL_BUYER ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.STORE_ID ;;
  }

  dimension: store_lat {
    type: number
    sql: ${TABLE}.STORE_LAT ;;
  }

  dimension: store_lon {
    type: number
    sql: ${TABLE}.STORE_LON ;;
  }

  dimension: store_state {
    type: string
    sql: ${TABLE}.STORE_STATE ;;
  }

  dimension: store_type {
    type: string
    sql: ${TABLE}.STORE_TYPE ;;
  }

  dimension: store_zip {
    type: number
    sql: ${TABLE}.STORE_ZIP ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}.TRANSACTION_ID ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
