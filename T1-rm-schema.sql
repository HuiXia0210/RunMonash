/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T1-rm-schema.sql

--Student ID: 33590966
--Student Name: Ooi Hui Xia 

/* Comments for your marker:




*/

/* drop table statements - do not remove*/

DROP TABLE competitor CASCADE CONSTRAINTS PURGE;

DROP TABLE entry CASCADE CONSTRAINTS PURGE;

DROP TABLE team CASCADE CONSTRAINTS PURGE;

/* end of drop table statements*/

-- Task 1 Add Create table statements for the Missing TABLES below.
-- Ensure all column comments, and constraints (other than FK's)are included.
-- FK constraints are to be added at the end of this script

-- COMPETITOR
Create Table COMPETITOR
(
    comp_no Number(5) Not NULL,
    comp_fname VARCHAR2(30),
    comp_lname VARCHAR2(30),
    comp_gender char(1) Not NULL,
    comp_dob Date Not NULL,
    comp_email VARCHAR2(50) Not NULL,
    comp_unistatus char(1) Not NULL ,
    comp_phone char(10) Not NULL
);


Alter table competitor Add CONSTRAINT competitor_pk PRIMARY KEY (comp_no);

Alter table competitor Add CONSTRAINT competitor_email_uq UNIQUE (comp_email);

Alter table competitor Add CONSTRAINT competitor_phone_uq UNIQUE (comp_phone);

Comment On column COMPETITOR.comp_no is 'Unique identifier for a competitor';

Comment On column COMPETITOR.comp_fname is 'Competitor''s first name';

Comment On column COMPETITOR.comp_lname is 'Competitor''s last name';

Comment On column COMPETITOR.comp_gender is 'Competitor''s gender (M for male, F for female, U for undisclosed)';

Comment On column COMPETITOR.comp_dob is 'Competitor''s date of birth';

Comment On column COMPETITOR.comp_email is 'Competitor''s email (unique for each competitor)';

Comment On column COMPETITOR.comp_unistatus is 'Competitor is a university student or staff (Y = yes, N = no)';

Comment On column COMPETITOR.comp_phone is 'Competitor''s phone number (unique for each competitor)';


ALTER TABLE COMPETITOR
ADD CONSTRAINT chk_unistatus
CHECK (comp_unistatus IN ('Y', 'N'));


ALTER TABLE COMPETITOR
ADD CONSTRAINT chk_gender
CHECK (comp_gender IN ('M', 'F', 'U'));


--ENTRY
Create Table ENTRY
(
    event_id Number(6) Not NULL, 
    entry_no Number(5) Not NULL, 
    entry_starttime Date,
    entry_finishtime Date,
    entry_elapsedtime Date, 
    comp_no number(5) Not NULL, 
    team_id number(3),
    char_id number(3) 
);


Alter table ENTRY Add CONSTRAINT entry_pk PRIMARY KEY (event_id, entry_no);

COMMENT ON COLUMN ENTRY.event_id IS 'Event id (surrogate primary key)';

Comment on column ENTRY.entry_no is 'Unique entry number';

Comment on column ENTRY.entry_starttime is 'Start time of the entrant';

Comment on column ENTRY.entry_finishtime is 'Finish time of the entrant';

Comment on column ENTRY.entry_elapsedtime is 'The time the entrant took to complete the event';

Comment On column ENTRY.comp_no is 'Unique identifier for a competitor';

Comment on column ENTRY.team_id is 'Identifier for team';

COMMENT ON COLUMN ENTRY.char_id IS 'Charity unique identifier';


--TEAM
Create Table TEAM 
(
    team_id Number(3) Not NULL,
    team_name VARCHAR2(30) Not NULL, 
    carn_date Date Not NULL, 
    event_id Number(6) Not NULL, 
    entry_no Number(5) Not NULL
);

Alter table team Add CONSTRAINT team_pk PRIMARY KEY (team_id);

Alter table team Add CONSTRAINT name_carndate_uq UNIQUE (team_name, carn_date);


Comment on column team.team_id is 'Team identifier (unique)';

Comment on column team.team_name is 'Team name';

COMMENT ON COLUMN team.carn_date IS 'Date of carnival (unique identifier)';

COMMENT ON COLUMN team.event_id IS 'Event id (surrogate primary key)';

Comment on column team.entry_no is 'Unique entry number';



-- Add all missing FK Constraints below here
Alter Table entry
    ADD CONSTRAINT entry_team_fk FOREIGN key (team_id) 
        REFERENCES team (team_id);

Alter Table entry
    ADD CONSTRAINT entry_competitor_fk FOREIGN key (comp_no) 
        REFERENCES competitor (comp_no);

Alter Table entry
    ADD CONSTRAINT entry_charity_fk FOREIGN key (char_id) 
        REFERENCES charity (char_id);

Alter Table entry
    ADD CONSTRAINT entry_event_fk FOREIGN key (event_id) 
        REFERENCES event (event_id);      

Alter Table Team
    ADD CONSTRAINT team_entry_fk FOREIGN key (event_id, entry_no) 
        REFERENCES entry (event_id,entry_no);

Alter Table Team
    ADD CONSTRAINT team_carnival_fk FOREIGN key (carn_date) 
        REFERENCES carnival (carn_date);