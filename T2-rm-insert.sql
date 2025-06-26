/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T2-rm-insert.sql

--Student ID: 33590966
--Student Name: Ooi Hui Xia 

/* Comments for your marker:




*/

-- Task 2 Load the COMPETITOR, ENTRY and TEAM tables with your own
-- test data following the data requirements expressed in the brief

-- =======================================
-- COMPETITOR
-- =======================================


INSERT INTO COMPETITOR (
    comp_no, comp_fname, comp_lname, comp_gender, comp_dob, comp_email, comp_unistatus, comp_phone
) VALUES (1, 'Amy', 'Ooi', 'F', TO_DATE('09-Dec-2002', 'DD-Mon-YYYY'), 'amyooi@gmail.com', 'Y', '0400000001');

INSERT INTO COMPETITOR (
    comp_no, comp_fname, comp_lname, comp_gender, comp_dob, comp_email, comp_unistatus, comp_phone
) VALUES (2, 'Henry', 'Lau', 'F', TO_DATE('05-Oct-2004', 'DD-Mon-YYYY'), 'henrylau@gmail.com', 'Y', '0400000002');

INSERT INTO COMPETITOR (
    comp_no, comp_fname, comp_lname, comp_gender, comp_dob, comp_email, comp_unistatus, comp_phone
) VALUES (3, 'David', 'King', 'M', TO_DATE('20-May-2005', 'DD-Mon-YYYY'), 'kingdavid@gmail.com', 'Y', '0400000003');

INSERT INTO COMPETITOR (
    comp_no, comp_fname, comp_lname, comp_gender, comp_dob, comp_email, comp_unistatus, comp_phone
) VALUES (4, 'Pei', 'Chuah', 'F', TO_DATE('03-Oct-2003', 'DD-Mon-YYYY'), 'peichuah@gmail.com', 'Y', '0400000004');

INSERT INTO COMPETITOR (
    comp_no, comp_fname, comp_lname, comp_gender, comp_dob, comp_email, comp_unistatus, comp_phone
) VALUES (5, 'Eva', 'Ng', 'F', TO_DATE('03-Jan-2001', 'DD-Mon-YYYY'), 'evelynha@gmail.com', 'Y', '0400000005');

INSERT INTO COMPETITOR (
    comp_no, comp_fname, comp_lname, comp_gender, comp_dob, comp_email, comp_unistatus, comp_phone
) VALUES (6, 'Frank', 'Zhou', 'M', TO_DATE('02-Apr-2004', 'DD-Mon-YYYY'), 'frankzhou@yahoo.com', 'Y', '0400000006');

INSERT INTO COMPETITOR (
    comp_no, comp_fname, comp_lname, comp_gender, comp_dob, comp_email, comp_unistatus, comp_phone
) VALUES (7, 'Wilson', 'Lim', 'M', TO_DATE('08-Oct-2003', 'DD-Mon-YYYY'), 'wilsonlim@yahoo.com', 'Y', '0400000007');

INSERT INTO COMPETITOR (
    comp_no, comp_fname, comp_lname, comp_gender, comp_dob, comp_email, comp_unistatus, comp_phone
) VALUES (8, 'John', 'Tan', 'M', TO_DATE('18-Jun-2001', 'DD-Mon-YYYY'), 'johntan@gmail.com', 'Y', '0400000008');

INSERT INTO COMPETITOR (
    comp_no, comp_fname, comp_lname, comp_gender, comp_dob, comp_email, comp_unistatus, comp_phone
) VALUES (9, 'James', 'Goh', 'U', TO_DATE('06-Mar-2001', 'DD-Mon-YYYY'), 'jamesgoh@yahoo.com', 'N', '0400000009');

INSERT INTO COMPETITOR (
    comp_no, comp_fname, comp_lname, comp_gender, comp_dob, comp_email, comp_unistatus, comp_phone
) VALUES (10, 'Vanh', 'Goh', 'U', TO_DATE('06-Feb-2004', 'DD-Mon-YYYY'), 'vanhgoh@gmail.com', 'N', '0400000010');

INSERT INTO COMPETITOR (
    comp_no, comp_fname, comp_lname, comp_gender, comp_dob, comp_email, comp_unistatus, comp_phone
) VALUES (11, 'Kelly', 'Lau', 'F', TO_DATE('08-Aug-2005', 'DD-Mon-YYYY'), 'kellylau@yahoo.com', 'N', '0400000011');

INSERT INTO COMPETITOR (
    comp_no, comp_fname, comp_lname, comp_gender, comp_dob, comp_email, comp_unistatus, comp_phone
) VALUES (12, 'Leo', 'Tan', 'M', TO_DATE('01-Sep-2002', 'DD-Mon-YYYY'), 'leotan@gmail.com', 'N', '0400000012');

INSERT INTO COMPETITOR (
    comp_no, comp_fname, comp_lname, comp_gender, comp_dob, comp_email, comp_unistatus, comp_phone
) VALUES (13, 'Winnie', 'Ng', 'F', TO_DATE('06-Jun-2004', 'DD-Mon-YYYY'), 'winnieng@gmail.com', 'N', '0400000013');

INSERT INTO COMPETITOR (
    comp_no, comp_fname, comp_lname, comp_gender, comp_dob, comp_email, comp_unistatus, comp_phone
) VALUES (14, 'William', 'Seng', 'M', TO_DATE('02-Sep-2007', 'DD-Mon-YYYY'), 'williamseng@yahoo.com', 'N', '0400000014');


INSERT INTO COMPETITOR (
    comp_no, comp_fname, comp_lname, comp_gender, comp_dob, comp_email, comp_unistatus, comp_phone
) VALUES (15, 'Nathan', 'Sim', 'M', TO_DATE('09-Nov-2000', 'DD-Mon-YYYY'), 'nathansim@gmail.com', 'N', '0400000015');


INSERT INTO COMPETITOR (
    comp_no, comp_fname, comp_lname, comp_gender, comp_dob, comp_email, comp_unistatus, comp_phone
) VALUES (16, 'Olivia', 'Teo', 'F', TO_DATE('26-Aug-2006', 'DD-Mon-YYYY'), 'oliviateo@gmail.com', 'N', '0400000016');


-- only for testing data 

SELECT comp_unistatus, COUNT(*) AS count
FROM COMPETITOR
GROUP BY comp_unistatus;



-- =======================================
-- ENTRY
-- =======================================
INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(1, 1, TO_DATE('09:00:00', 'hh24:mi:ss'), TO_DATE('09:15:00', 'hh24:mi:ss'), TO_DATE('00:15:00', 'hh24:mi:ss'), 1, NULL, 1); --1

UPDATE ENTRY
SET team_id = 1
WHERE event_id = 1 AND entry_no = 1;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(2, 2, TO_DATE('10:00:00', 'hh24:mi:ss'), TO_DATE('10:20:00', 'hh24:mi:ss'), TO_DATE('00:20:00', 'hh24:mi:ss'), 2, NULL, 2); --3

UPDATE ENTRY
SET team_id = 3
WHERE event_id = 2 AND entry_no = 2;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(3, 3, TO_DATE('11:00:00', 'hh24:mi:ss'), TO_DATE('11:25:00', 'hh24:mi:ss'), TO_DATE('00:25:00', 'hh24:mi:ss'), 3, NULL, 3); --2

UPDATE ENTRY
SET team_id = 2
WHERE event_id = 3 AND entry_no = 3;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(4, 4, TO_DATE('09:00:00', 'hh24:mi:ss'), TO_DATE('09:10:00', 'hh24:mi:ss'), TO_DATE('00:10:00', 'hh24:mi:ss'), 4, NULL, 1); --1

UPDATE ENTRY
SET team_id = 1
WHERE event_id = 4 AND entry_no = 4;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(5, 5, TO_DATE('10:30:00', 'hh24:mi:ss'), TO_DATE('10:45:00', 'hh24:mi:ss'), TO_DATE('00:15:00', 'hh24:mi:ss'), 5, NULL, 2); --4

UPDATE ENTRY
SET team_id = 4
WHERE event_id = 5 AND entry_no = 5;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(6, 6, TO_DATE('11:00:00', 'hh24:mi:ss'), TO_DATE('11:18:00', 'hh24:mi:ss'), TO_DATE('00:18:00', 'hh24:mi:ss'), 6, NULL, 3); --6

UPDATE ENTRY
SET team_id = 6
WHERE event_id = 6 AND entry_no = 6;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(1, 7, TO_DATE('09:00:00', 'hh24:mi:ss'), TO_DATE('09:19:00', 'hh24:mi:ss'), TO_DATE('00:19:00', 'hh24:mi:ss'), 1, NULL, 1); --1

UPDATE ENTRY
SET team_id = 1
WHERE event_id = 1 AND entry_no = 7;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(2, 8, TO_DATE('10:10:00', 'hh24:mi:ss'), TO_DATE('10:30:00', 'hh24:mi:ss'), TO_DATE('00:20:00', 'hh24:mi:ss'), 2, NULL, 2); --2

UPDATE ENTRY
SET team_id = 2
WHERE event_id = 2 AND entry_no = 8;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(3, 9, TO_DATE('11:15:00', 'hh24:mi:ss'), TO_DATE('11:40:00', 'hh24:mi:ss'), TO_DATE('00:25:00', 'hh24:mi:ss'), 7, NULL, 4); --4

UPDATE ENTRY
SET team_id = 4
WHERE event_id = 3 AND entry_no = 9;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(4,10, TO_DATE('09:00:00', 'hh24:mi:ss'), TO_DATE('09:12:00', 'hh24:mi:ss'), TO_DATE('00:12:00', 'hh24:mi:ss'), 5, NULL, 1); --5

UPDATE ENTRY
SET team_id = 5
WHERE event_id = 4 AND entry_no = 10;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(5,11, TO_DATE('10:30:00', 'hh24:mi:ss'), TO_DATE('10:43:00', 'hh24:mi:ss'), TO_DATE('00:13:00', 'hh24:mi:ss'), 9, NULL, 2); --6

UPDATE ENTRY
SET team_id = 6
WHERE event_id = 5 AND entry_no = 11;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(6,12, TO_DATE('11:00:00', 'hh24:mi:ss'), TO_DATE('11:17:00', 'hh24:mi:ss'), TO_DATE('00:17:00', 'hh24:mi:ss'),10, NULL, 3); --1

UPDATE ENTRY
SET team_id = 1
WHERE event_id = 6 AND entry_no = 12;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(7,13, TO_DATE('12:00:00', 'hh24:mi:ss'), TO_DATE('12:22:00', 'hh24:mi:ss'), TO_DATE('00:22:00', 'hh24:mi:ss'),11, NULL, 4); --2

UPDATE ENTRY
SET team_id = 2
WHERE event_id = 7 AND entry_no = 13;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(8,14, TO_DATE('08:00:00', 'hh24:mi:ss'), TO_DATE('08:30:00', 'hh24:mi:ss'), TO_DATE('00:30:00', 'hh24:mi:ss'),12, NULL, 1); --1

UPDATE ENTRY
SET team_id = 1
WHERE event_id = 8 AND entry_no = 14;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(3,15, TO_DATE('09:00:00', 'hh24:mi:ss'), TO_DATE('09:25:00', 'hh24:mi:ss'), TO_DATE('00:25:00', 'hh24:mi:ss'), 5, NULL, 2); --2

UPDATE ENTRY
SET team_id = 2
WHERE event_id = 3 AND entry_no = 15;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(2,16, TO_DATE('10:00:00', 'hh24:mi:ss'), TO_DATE('10:22:00', 'hh24:mi:ss'), TO_DATE('00:22:00', 'hh24:mi:ss'), 1, NULL, 3); --3

UPDATE ENTRY
SET team_id = 3
WHERE event_id = 2 AND entry_no = 16;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(1,17, TO_DATE('11:00:00', 'hh24:mi:ss'), TO_DATE('11:17:00', 'hh24:mi:ss'), TO_DATE('00:17:00', 'hh24:mi:ss'), 6, NULL, 4); --4

UPDATE ENTRY
SET team_id = 4
WHERE event_id = 1 AND entry_no = 17;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(6,18, TO_DATE('12:00:00', 'hh24:mi:ss'), TO_DATE('12:18:00', 'hh24:mi:ss'), TO_DATE('00:18:00', 'hh24:mi:ss'), 1, NULL, 1); --1

UPDATE ENTRY
SET team_id = 1
WHERE event_id = 6 AND entry_no = 18;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(4,19, TO_DATE('08:30:00', 'hh24:mi:ss'), TO_DATE('08:43:00', 'hh24:mi:ss'), TO_DATE('00:13:00', 'hh24:mi:ss'), 3, NULL, 2); --2

UPDATE ENTRY
SET team_id = 2
WHERE event_id = 4 AND entry_no = 19;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(5,20, TO_DATE('09:00:00', 'hh24:mi:ss'), TO_DATE('09:12:00', 'hh24:mi:ss'), TO_DATE('00:12:00', 'hh24:mi:ss'), 2, NULL, 3); --3

UPDATE ENTRY
SET team_id = 3
WHERE event_id = 5 AND entry_no = 20;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(8,21, TO_DATE('10:00:00', 'hh24:mi:ss'), TO_DATE('10:28:00', 'hh24:mi:ss'), TO_DATE('00:28:00', 'hh24:mi:ss'), 4, NULL, 4); --4

UPDATE ENTRY
SET team_id = 4
WHERE event_id = 8 AND entry_no = 21;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(7,22, TO_DATE('11:00:00', 'hh24:mi:ss'), TO_DATE('11:24:00', 'hh24:mi:ss'), TO_DATE('00:24:00', 'hh24:mi:ss'), 5, NULL, 1); --5

UPDATE ENTRY
SET team_id = 5
WHERE event_id = 7 AND entry_no = 22;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES --6
(3,23, NULL, NULL, NULL, 6, NULL, 2);

UPDATE ENTRY
SET team_id = NULL
WHERE event_id = 3 AND entry_no = 23;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES --1
(2,24, NULL, NULL, NULL, 7, NULL, 3);

UPDATE ENTRY
SET team_id = NULL
WHERE event_id = 2 AND entry_no = 24;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES --2
(6,25, NULL, NULL, NULL, 8, NULL, 4);

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES --3
(1,26, NULL, NULL, NULL, 9, NULL, 1);

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES --2
(5,27, NULL, NULL, NULL,10, NULL, 2);

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(8,28, TO_DATE('10:00:00', 'hh24:mi:ss'), TO_DATE('10:30:00', 'hh24:mi:ss'), TO_DATE('00:30:00', 'hh24:mi:ss'),11, NULL, 3); --3

UPDATE ENTRY
SET team_id = 3
WHERE event_id = 8 AND entry_no = 28;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(7,29, TO_DATE('11:00:00', 'hh24:mi:ss'), TO_DATE('11:25:00', 'hh24:mi:ss'), TO_DATE('00:25:00', 'hh24:mi:ss'),12, NULL, 4); --4

UPDATE ENTRY
SET team_id = 4
WHERE event_id = 7 AND entry_no = 29;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(4,30, TO_DATE('13:00:00', 'hh24:mi:ss'), TO_DATE('13:11:00', 'hh24:mi:ss'), TO_DATE('00:11:00', 'hh24:mi:ss'),13, NULL, 1); --5

UPDATE ENTRY
SET team_id = 5
WHERE event_id = 4 AND entry_no = 30;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(3,31, TO_DATE('09:30:00', 'hh24:mi:ss'), TO_DATE('09:47:00', 'hh24:mi:ss'), TO_DATE('00:17:00', 'hh24:mi:ss'),14, NULL, 2); --1

UPDATE ENTRY
SET team_id = 1
WHERE event_id = 3 AND entry_no = 31;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(2,32, TO_DATE('10:00:00', 'hh24:mi:ss'), TO_DATE('10:15:00', 'hh24:mi:ss'), TO_DATE('00:15:00', 'hh24:mi:ss'),15, NULL, 3); --2

UPDATE ENTRY
SET team_id = 2
WHERE event_id = 2 AND entry_no = 32;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(1,33, TO_DATE('11:00:00', 'hh24:mi:ss'), TO_DATE('11:19:00', 'hh24:mi:ss'), TO_DATE('00:19:00', 'hh24:mi:ss'),16, NULL, 4); --3

UPDATE ENTRY
SET team_id = 3
WHERE event_id = 1 AND entry_no = 33;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES
(7,34, TO_DATE('11:00:00', 'hh24:mi:ss'), TO_DATE('12:00:00', 'hh24:mi:ss'), TO_DATE('12:28:00', 'hh24:mi:ss'),1, NULL, 1); --1

UPDATE ENTRY
SET team_id = 1
WHERE event_id = 7 AND entry_no = 34;

INSERT INTO ENTRY (event_id, entry_no, entry_starttime, entry_finishtime, entry_elapsedtime, comp_no, team_id, char_id) VALUES --2
(6,35, TO_DATE('13:00:00', 'hh24:mi:ss'), TO_DATE('13:18:00', 'hh24:mi:ss'), TO_DATE('00:18:00', 'hh24:mi:ss'),2, NULL, 2);

UPDATE ENTRY
SET team_id = 2
WHERE event_id = 6 AND entry_no = 35;

-- to test data 

SELECT team_id, COUNT(*) AS entries
FROM ENTRY
GROUP BY team_id
ORDER BY team_id;

-- check for null team_id
SELECT * FROM ENTRY
WHERE team_id IS NULL;


-- =======================================
-- TEAM
-- =======================================
INSERT INTO TEAM (team_id, team_name, carn_date, event_id, entry_no)
VALUES (1, 'Coyotes', TO_DATE('22-Sep-2024', 'dd-Mon-yyyy'), 1, 1);

INSERT INTO TEAM (team_id, team_name, carn_date, event_id, entry_no)
VALUES (2, 'Coyotes', TO_DATE('15-Mar-2025', 'dd-Mon-yyyy'), 3, 3);

INSERT INTO TEAM (team_id, team_name, carn_date, event_id, entry_no)
VALUES (3, 'Falcons', TO_DATE('05-Oct-2024', 'dd-Mon-yyyy'), 2, 2);

INSERT INTO TEAM (team_id, team_name, carn_date, event_id, entry_no)
VALUES (4, 'Wolves', TO_DATE('29-Jun-2025', 'dd-Mon-yyyy'), 5, 5);

INSERT INTO TEAM (team_id, team_name, carn_date, event_id, entry_no)
VALUES (5, 'Ravens', TO_DATE('02-Feb-2025', 'dd-Mon-yyyy'), 4, 10);

INSERT INTO TEAM (team_id, team_name, carn_date, event_id, entry_no)
VALUES (6, 'Tiger', TO_DATE('15-Mar-2025', 'dd-Mon-yyyy'), 6, 6);




COMMIT;


-- test data 

SELECT COUNT(*) FROM TEAM;

-- Check Reused Team Name
SELECT team_name, COUNT(DISTINCT carn_date) AS carnival_count
FROM TEAM
GROUP BY team_name
HAVING COUNT(DISTINCT carn_date) > 1;
