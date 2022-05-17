view: project_cost_perday {
  sql_table_name: `cost_management.project_cost_perday`
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
