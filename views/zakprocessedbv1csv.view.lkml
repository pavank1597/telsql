# The name of this view in Looker is "Zakprocessedbv1csv"
view: zakprocessedbv1csv {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ui_test.zakprocessedbv1csv ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " of Stores Sold" in Explore.

  dimension: _of_stores_sold {
    type: number
    sql: ${TABLE}.`# of Stores Sold` ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total__of_stores_sold {
    type: sum
    sql: ${_of_stores_sold} ;;  }
  measure: average__of_stores_sold {
    type: average
    sql: ${_of_stores_sold} ;;  }

  dimension: customer_code {
    type: string
    sql: ${TABLE}.`Customer Code` ;;
  }

  dimension: customer_item_number {
    type: string
    sql: ${TABLE}.`Customer Item Number` ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_posted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.`Date Posted` ;;
  }

  dimension: financial_group {
    type: string
    sql: ${TABLE}.FinancialGroup ;;
  }

  dimension: gender_demo {
    type: string
    sql: ${TABLE}.`Gender Demo` ;;
  }

  dimension: instock {
    type: number
    sql: ${TABLE}.Instock ;;
  }

  dimension: license {
    type: string
    sql: ${TABLE}.License ;;
  }

  dimension: qty_sold {
    type: number
    sql: ${TABLE}.`Qty Sold` ;;
  }

  dimension: sum_of_pos_sales_dollars {
    type: number
    sql: ${TABLE}.`SumOfPOS Sales Dollars` ;;
  }

  dimension: sum_of_qty_avail {
    type: number
    sql: ${TABLE}.`SumOfQty Avail` ;;
  }

  dimension: zak_item_number {
    type: string
    sql: ${TABLE}.`Zak Item Number` ;;
  }

  dimension_group: zak_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.`Zak Start Date` ;;
  }
  measure: count {
    type: count
  }
}
