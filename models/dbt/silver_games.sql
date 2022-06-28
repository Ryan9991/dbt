{{
    config(
        materialized = 'table',
        schema = 'dbt'
    )
}}

select * except(gameId, seasonId) from {{ source('dbt', 'bronze_games_wide') }}