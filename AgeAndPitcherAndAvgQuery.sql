SELECT DISTINCT Player.player_id, Player.fullname
FROM Player
LEFT JOIN PositionPlayer ON Player.player_id = PositionPlayer.player_id
LEFT JOIN Pitcher ON Player.player_id = Pitcher.player_id
JOIN Team ON Player.team_id = Team.team_id
JOIN Position ON PositionPlayer.position_id = Position.position_id
LEFT JOIN StatlinePositionPlayer ON PositionPlayer.positionplayer_id = StatlinePositionPlayer.positionplayer_id
WHERE (Team.name = 'Red Sox' OR Team.name = 'Royals')
  AND (Position.name = 'P' OR StatlinePositionPlayer.avg  > 0.300)
  AND age < 25;