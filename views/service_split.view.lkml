view: service_split {
  sql_table_name: `cost_management.service_split`
    ;;

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
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
    sql: ${cost} ;;
    html: @{big_money_format} ;;
  }
}
