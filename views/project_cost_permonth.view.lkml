view: project_cost_permonth {
  sql_table_name: `cost_management.project_cost_permonth`
    ;;

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }

  measure: distinct_project_count {
    type: count_distinct
    sql: ${name} ;;
  }

  measure: total_cost {
    type: sum
    sql: ${cost} ;;
    html: @{big_money_format} ;;
  }
}
