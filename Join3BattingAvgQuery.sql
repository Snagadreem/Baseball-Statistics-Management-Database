SELECT player.fullname, StatlinePositionPlayer.year, StatlinePositionPlayer.avg
FROM Player
JOIN PositionPlayer ON player.player_id = positionplayer.player_id
JOIN StatlinePositionPlayer ON PositionPlayer.positionplayer_id = StatlinePositionPlayer.positionplayer_id
WHERE StatlinePositionPlayer.avg > .4