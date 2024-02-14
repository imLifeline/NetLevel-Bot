-- CreateTable
CREATE TABLE "Issue" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "guildId" TEXT NOT NULL,
    "error" TEXT NOT NULL,
    "uuid" TEXT NOT NULL,
    "authorId" TEXT NOT NULL,
    "interactionId" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "User" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "guildId" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "messageCount" INTEGER NOT NULL,
    "xp" INTEGER NOT NULL,
    "totalXp" INTEGER NOT NULL,
    "levelXp" INTEGER NOT NULL,
    "level" INTEGER NOT NULL,
    "rank" INTEGER NOT NULL,
    "noXp" BOOLEAN DEFAULT false,
    "lastRoleIdGiven" TEXT
);

-- CreateTable
CREATE TABLE "Guild" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "guildId" TEXT NOT NULL,
    "rankCardBackgroundURL" TEXT,
    "rankCardLevelColor" TEXT,
    "rankCardRankColor" TEXT,
    "rankCardProgressbarColor" TEXT,
    "noXpChannels" TEXT,
    "noXpRoles" TEXT,
    "xpRate" INTEGER,
    "levelUpMessage" TEXT,
    "levelUpChannel" TEXT,
    "topRankedRoleId" TEXT,
    "stackingRoles" BOOLEAN
);

-- CreateTable
CREATE TABLE "Role" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "guildId" TEXT NOT NULL,
    "roleId" TEXT NOT NULL,
    "level" INTEGER NOT NULL
);
