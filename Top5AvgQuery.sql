SELECT Player.player_id, Player.fullname, Team.name AS team_name, StatlinePositionPlayer.year, Position.name AS position_name, StatlinePositionPlayer.avg AS batting_average
FROM Player
JOIN PositionPlayer ON Player.player_id = PositionPlayer.player_id
JOIN Team ON Player.team_id = Team.team_id
JOIN Position ON PositionPlayer.position_id = Position.position_id
JOIN StatlinePositionPlayer ON PositionPlayer.positionplayer_id = StatlinePositionPlayer.positionplayer_id
ORDER BY StatlinePositionPlayer.avg DESC
LIMIT 5;