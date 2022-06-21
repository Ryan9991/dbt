{{
    config(
        materialized = 'view'
    )
}}

select * except(gameId, seasonId) from {{ source('dbt', 'bronze_games_wide') }}