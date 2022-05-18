view: service_split {
  sql_table_name: `cost_management.service_split`
    ;;

  dimension: cost {
    type: number
    sql: round(${TABLE}.cost,2) ;;
    html: @{big_money_format} ;;
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
    sql: round(${cost},2) ;;
    html: @{big_money_format} ;;
    drill_fields: [name,description,month,cost]
  }
}
