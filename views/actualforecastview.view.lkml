view: actualforecastview {
  sql_table_name: `cost_management.actual-forecast-view`
    ;;

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: forecast_value {
    type: number
    sql: ${TABLE}.forecast_value ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }

  measure: total_cost {
    type: sum
    sql:${cost};;
    #value_format_name:decimal_2
    html: @{big_money_format} ;;
    drill_fields: [name,date_raw,cost]
  }
}
