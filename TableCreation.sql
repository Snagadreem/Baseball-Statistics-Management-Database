CREATE TABLE "Division" (
	"division_id"	INTEGER NOT NULL,
	"name"	TEXT NOT NULL,
	PRIMARY KEY("division_id" AUTOINCREMENT)
)

CREATE TABLE "Team" (
	"team_id"	INTEGER NOT NULL,
	"name"	TEXT NOT NULL,
	"city"	TEXT NOT NULL,
	"league"	TEXT NOT NULL,
	"division_id"	INTEGER NOT NULL,
	PRIMARY KEY("team_id" AUTOINCREMENT),
	FOREIGN KEY("division_id") REFERENCES "Division"("division_id")
)

CREATE TABLE "Position" (
	"position_id"	INTEGER NOT NULL,
	"name"	TEXT,
	PRIMARY KEY("position_id" AUTOINCREMENT)
)

CREATE TABLE "PositionPlayer" (
	"positionplayer_id"	INTEGER NOT NULL,
	"player_id"	INTEGER NOT NULL,
	"position_id"	INTEGER NOT NULL,
	PRIMARY KEY("positionplayer_id" AUTOINCREMENT),
	FOREIGN KEY("player_id") REFERENCES "Player"("player_id"),
	FOREIGN KEY("position_id") REFERENCES "Position"("position_id")
)

CREATE TABLE "Pitcher" (
	"pitcher_id"	INTEGER NOT NULL,
	"player_id"	INTEGER NOT NULL,
	"position_id"	INTEGER NOT NULL,
	PRIMARY KEY("pitcher_id" AUTOINCREMENT),
	FOREIGN KEY("player_id") REFERENCES "Player"("player_id"),
	FOREIGN KEY("position_id") REFERENCES "Position"("position_id")
)

CREATE TABLE "Player" (
	"player_id"	INTEGER NOT NULL,
	"fullname"	VARCHAR(255),
	"jerseynum"	INTEGER,
	"age"	INTEGER NOT NULL,
	"birthcountry"	TEXT,
	"team_id"	INTEGER NOT NULL,
	PRIMARY KEY("player_id" AUTOINCREMENT),
	FOREIGN KEY("team_id") REFERENCES "Team"("team_id")
)

CREATE TABLE "StatlinePitcher" (
	"statlinepitcher_id"	INTEGER NOT NULL,
	"pitcher_id"	INTEGER NOT NULL,
	"year"	INTEGER NOT NULL,
	"g"	INTEGER NOT NULL,
	"ip"	INTEGER NOT NULL,
	"era"	REAL NOT NULL,
	"whip"	REAL NOT NULL,
	"fip"	REAL NOT NULL,
	"kbb"	REAL NOT NULL,
	PRIMARY KEY("statlinepitcher_id" AUTOINCREMENT),
	UNIQUE("year","pitcher_id"),
	FOREIGN KEY("pitcher_id") REFERENCES "Pitcher"("pitcher_id")
)

CREATE TABLE "StatlinePositionPlayer" (
	"statlinepositionplayer_id"	INTEGER NOT NULL,
	"positionplayer_id"	INTEGER NOT NULL,
	"year"	INTEGER NOT NULL,
	"g"	INTEGER NOT NULL,
	"ab"	INTEGER NOT NULL,
	"pa"	INTEGER NOT NULL,
	"avg"	REAL NOT NULL,
	"obp"	REAL NOT NULL,
	"slg"	REAL NOT NULL,
	"ops"	REAL NOT NULL,
	PRIMARY KEY("statlinepositionplayer_id" AUTOINCREMENT),
	FOREIGN KEY("positionplayer_id") REFERENCES "PositionPlayer"("positionplayer_id"),
	CHECK(obp+slg=ops)
)