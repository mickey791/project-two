-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/gKCJcb
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Batting_2021" (
    "id" SERIAL   NOT NULL,
    "RK" INT   NOT NULL,
    "Name" VARCHAR(50)   NOT NULL,
    "Team" VARCHAR(10)   NOT NULL,
    "POS" VARCHAR(10)   NOT NULL,
    "Games_Played" INT   NOT NULL,
    "At_Bats" INT   NOT NULL,
    "Runs" INT   NOT NULL,
    "Hits" INT   NOT NULL,
    "AVG" DECIMAL   NOT NULL,
    "2B" INT   NOT NULL,
    "3B" INT   NOT NULL,
    "Home_Runs" INT   NOT NULL,
    "Runs_Batted In" INT   NOT NULL,
    "Total_Bases" INT   NOT NULL,
    "Walks" INT   NOT NULL,
    "Strikeouts" INT   NOT NULL,
    "Stolen_Bases" INT   NOT NULL,
    CONSTRAINT "pk_Batting_2021" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Attendance_2021" (
    "id" SERIAL   NOT NULL,
    "RK" INT   NOT NULL,
    "Team" VARCHAR(50)   NOT NULL,
    "ABR" VARCHAR(10)   NOT NULL,
    "Home_Games" INT   NOT NULL,
    "Home_Total" INT   NOT NULL,
    "Home_Avg" INT   NOT NULL,
    "Road_Games" INT   NOT NULL,
    "Road_Avg" INT   NOT NULL,
    "Overall_Games" INT   NOT NULL,
    "Overall_Avg" INT   NOT NULL,
    CONSTRAINT "pk_Attendance_2021" PRIMARY KEY (
        "Team"
     )
);

CREATE TABLE "Payroll_2019" (
    "RK" INT   NOT NULL,
    "Team" VARCHAR(50)   NOT NULL,
    "Roster" INT   NOT NULL,
    "Active" BIGSERIAL   NOT NULL,
    "Injured_Reserve" BIGSERIAL   NOT NULL,
    "Total" BIGSERIAL   NOT NULL
    
     
);

SELECT * FROM "Payroll_2021"


ALTER TABLE "Batting" ADD CONSTRAINT "fk_Batting_Team" FOREIGN KEY("Team")
REFERENCES "Attendance" ("ABR");

ALTER TABLE "Attendance" ADD CONSTRAINT "fk_Attendance_Team" FOREIGN KEY("Team")
REFERENCES "Payroll" ("Team");

