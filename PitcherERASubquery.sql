SELECT player.fullname AS 'Cy Young Winners'
FROM Player
WHERE player.player_id in (
	SELECT Pitcher.player_id
	FROM Pitcher
	JOIN StatlinePitcher ON Pitcher.pitcher_id = StatlinePitcher.pitcher_id
	WHERE era < 1)