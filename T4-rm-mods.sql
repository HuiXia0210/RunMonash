--****PLEASE ENTER YOUR DETAILS BELOW****
--T4-rm-mods.sql

--Student ID: 33590966
--Student Name: Ooi Hui Xia

/* Comments for your marker:




*/

--(a)
SELECT * FROM COMPETITOR;
DESC COMPETITOR;

ALTER TABLE COMPETITOR ADD(
    completed_events  NUMBER(3,0) DEFAULT 0 NOT NULL
); 

COMMENT ON COLUMN COMPETITOR.completed_events IS
    'Number of completed events by the competitor';

UPDATE COMPETITOR c
SET completed_events = (
    SELECT COUNT (*)
    FROM ENTRY ent JOIN COMPETITOR cp ON ent.comp_no = cp.comp_no 
    WHERE cp.comp_no = c.comp_no
);

COMMIT;

--(b)
DROP TABLE char_entry CASCADE CONSTRAINTS PURGE;

CREATE TABLE char_entry (
    event_id   NUMBER(6) NOT NULL,
    entry_no   NUMBER(5) NOT NULL,
    char_id    NUMBER(3) NOT NULL,
    percentage_fund NUMBER(3) NOT NULL
);

COMMENT ON COLUMN char_entry.event_id IS 'Event id (surrogate primary key)';

COMMENT ON COLUMN char_entry.entry_no IS 'Entry number';

COMMENT ON COLUMN char_entry.char_id IS 'Charity unique identifier';

COMMENT ON COLUMN char_entry.percentage_fund IS 'Percentage of total funds for respective charity';

ALTER TABLE char_entry ADD CONSTRAINT entry_charity_pk PRIMARY KEY (event_id, entry_no, char_id);

ALTER TABLE char_entry ADD CONSTRAINT chk_percentage_fund CHECK (percentage_fund BETWEEN 0 AND 100);

ALTER TABLE char_entry ADD CONSTRAINT entry_charity_entry_fk FOREIGN KEY (event_id, entry_no)
    REFERENCES entry (event_id, entry_no);

ALTER TABLE char_entry
    ADD CONSTRAINT charity_char_entry__charity_fk FOREIGN KEY (char_id)
        REFERENCES charity (char_id);



INSERT INTO char_entry (
    event_id, 
    entry_no, 
    char_id, 
    percentage_fund)
SELECT event_id, entry_no, char_id, 100
FROM entry

WHERE char_id IS NOT NULL;

ALTER TABLE entry DROP CONSTRAINT entry_charity_fk;

ALTER TABLE entry DROP COLUMN char_id;

COMMIT;



-- SELECT AND DESC 
DESC char_entry;

SELECT *
FROM char_entry;

SELECT *
FROM entry;

DESC entry;