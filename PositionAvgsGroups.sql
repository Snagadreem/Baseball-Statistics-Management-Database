SELECT Position.name, ROUND(AVG(StatlinePositionPlayer.avg), 3) AS average_avg
FROM Player
JOIN PositionPlayer ON Player.player_id = PositionPlayer.player_id
JOIN Position ON PositionPlayer.position_id = Position.position_id
JOIN StatlinePositionPlayer ON PositionPlayer.positionplayer_id = StatlinePositionPlayer.positionplayer_id
GROUP BY Position.position_id
HAVING AVG(StatlinePositionPlayer.avg) > .3