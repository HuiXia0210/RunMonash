/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T6-rm-json.sql

--Student ID: 33590966
--Student Name: Ooi Hui Xia 


/* Comments for your marker:




*/


-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer
--SET PAGESIZE 200
-- Create JSON document


-- T6-rm-json.sql
-- Generate JSON documents for each team

SET PAGESIZE 200;

WITH team_leader_info AS (
    SELECT 
        e.entry_no,
        e.event_id,
        TRIM(NVL(c.comp_fname, '') || ' ' || NVL(c.comp_lname, '')) AS full_name,
        NVL(c.comp_phone, '-') AS phone,
        NVL(c.comp_email, '-') AS email
    FROM entry e
    JOIN competitor c ON e.comp_no = c.comp_no
),
event_info AS (
    SELECT 
        ev.event_id,
        NVL(et.eventtype_desc, '-') AS eventtype_desc
    FROM event ev
    LEFT JOIN eventtype et ON ev.eventtype_code = et.eventtype_code
)
SELECT 
    JSON_OBJECT(
        '_id' VALUE t.team_id,
        'carn_name' VALUE NVL(c.carn_name, '-'),
        'carn_date' VALUE TO_CHAR(t.carn_date, 'DD-Mon-YYYY'),
        'team_name' VALUE NVL(t.team_name, '-'),
        'team_leader' VALUE JSON_OBJECT(
            'name' VALUE NVL(tli.full_name, '-'),
            'phone' VALUE tli.phone,
            'email' VALUE tli.email
        ),
        'team_no_of_members' VALUE COUNT(DISTINCT comp.comp_no),
        'team_members' VALUE JSON_ARRAYAGG(
            JSON_OBJECT(
                'competitor_name' VALUE NVL(TRIM(NVL(comp.comp_fname, '') || ' ' || NVL(comp.comp_lname, '')), '-'),
                'competitor_phone' VALUE NVL(comp.comp_phone, '-'),
                'event_type' VALUE NVL(ei.eventtype_desc, '-'),
                'entry_no' VALUE e.entry_no,
                'starttime' VALUE NVL(TO_CHAR(e.entry_starttime, 'HH24:MI:SS'), '-'),
                'finishtime' VALUE NVL(TO_CHAR(e.entry_finishtime, 'HH24:MI:SS'), '-'),
                'elapsedtime' VALUE NVL(TO_CHAR(e.entry_elapsedtime, 'HH24:MI:SS'), '-')
            )
        )
    FORMAT JSON
) AS team_json
FROM team t
JOIN entry e ON t.team_id = e.team_id
JOIN competitor comp ON e.comp_no = comp.comp_no
JOIN carnival c ON c.carn_date = t.carn_date
LEFT JOIN team_leader_info tli ON t.entry_no = tli.entry_no AND t.event_id = tli.event_id
LEFT JOIN event_info ei ON e.event_id = ei.event_id
GROUP BY
    t.team_id, t.carn_date, c.carn_name, t.team_name,
    t.entry_no, t.event_id,
    tli.full_name, tli.phone, tli.email;






