# The name of this view in Looker is "Mysql Save123"
view: mysql_save123 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ui_test.mysql_save123 ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Customer Code" in Explore.

  dimension: customer_code {
    type: string
    sql: ${TABLE}.Customer_Code ;;
  }

  dimension: customer_item_number {
    type: string
    sql: ${TABLE}.Customer_Item_Number ;;
  }

  dimension: date_posted {
    type: string
    sql: ${TABLE}.Date_Posted ;;
  }

  dimension: finance_collective_active_fca_ {
    type: string
    sql: ${TABLE}.Finance_Collective_Active_FCA_ ;;
  }

  dimension: fixedcol {
    type: number
    sql: ${TABLE}.fixedcol ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_fixedcol {
    type: sum
    sql: ${fixedcol} ;;  }
  measure: average_fixedcol {
    type: average
    sql: ${fixedcol} ;;  }

  dimension: gender_demo {
    type: string
    sql: ${TABLE}.Gender_Demo ;;
  }

  dimension: instock {
    type: string
    sql: ${TABLE}.Instock ;;
  }

  dimension: item_category {
    type: string
    sql: ${TABLE}.item_category ;;
  }

  dimension: item_detail {
    type: string
    sql: ${TABLE}.Item_Detail ;;
  }

  dimension: license_animated {
    type: string
    sql: ${TABLE}.license_animated ;;
  }

  dimension: license_comicbook {
    type: string
    sql: ${TABLE}.license_comicbook ;;
  }

  dimension: new_date {
    type: string
    sql: ${TABLE}.new_date ;;
  }

  dimension: new_date_final {
    type: string
    sql: ${TABLE}.new_date_final ;;
  }

  dimension: of_stores_sold {
    type: number
    sql: ${TABLE}.of_Stores_Sold ;;
  }

  dimension: permit_authorization {
    type: string
    sql: ${TABLE}.Permit_Authorization ;;
  }

  dimension: quantity_sold_qs_ {
    type: number
    sql: ${TABLE}.Quantity_Sold_QS_ ;;
  }

  dimension: sum_of_pos_sales_dollars {
    type: number
    sql: ${TABLE}.SumOfPOS_Sales_Dollars ;;
  }

  dimension: sum_of_qty_avail {
    type: string
    sql: ${TABLE}.SumOfQty_Avail ;;
  }

  dimension: tras_date {
    type: string
    sql: ${TABLE}.tras_date ;;
  }

  dimension: zak_item_number {
    type: string
    sql: ${TABLE}.Zak_Item_Number ;;
  }

  dimension: zak_open_date_zoa_ {
    type: string
    sql: ${TABLE}.ZAK_Open_Date_ZOA_ ;;
  }

  dimension: zak_start_date_dayofmonth {
    type: number
    sql: ${TABLE}.Zak_Start_Date_dayofmonth ;;
  }

  dimension: zak_start_date_month {
    type: number
    sql: ${TABLE}.Zak_Start_Date_month ;;
  }

  dimension: zak_start_date_year {
    type: number
    sql: ${TABLE}.Zak_Start_Date_year ;;
  }
  measure: count {
    type: count
  }
}
