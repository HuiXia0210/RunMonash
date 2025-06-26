/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T5-rm-select.sql

--Student ID: 33590966
--Student Name: Ooi Hui Xia 


/* Comments for your marker:




*/


/* (a) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer
SELECT
    t.team_name,
    RPAD(TO_CHAR(c.carn_date, 'DD-Mon-YYYY'), 15) AS CARNIVAL_DATE,
    cp.comp_fname || ' ' || cp.comp_lname AS TEAMLEADER,
    (
        SELECT COUNT(*)
        FROM entry e_inner
        WHERE e_inner.team_id = t.team_id
          AND e_inner.event_id = t.event_id
    ) AS TEAM_NO_MEMBERS
FROM
    team t
    JOIN carnival c
        ON t.carn_date = c.carn_date
    JOIN entry e
        ON t.event_id = e.event_id
       AND t.entry_no = e.entry_no
    JOIN competitor cp
        ON e.comp_no = cp.comp_no
WHERE
    t.team_name IN (
        SELECT team_name
        FROM team
        GROUP BY team_name
        HAVING COUNT(*) = (
            SELECT MAX(name_count)
            FROM (
                SELECT team_name, COUNT(*) AS name_count
                FROM team
                GROUP BY team_name
            )
        )
    )
ORDER BY
    t.team_name,
    c.carn_date;

/* (b) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer
SELECT
    et.eventtype_desc AS "Event",
    c.carn_name || ' held ' || TO_CHAR(c.carn_date, 'Dy DD-Mon-YYYY') AS "Carnival",
    RPAD(TO_CHAR(e.entry_elapsedtime, 'HH24:MI:SS'), 15) AS "Current Record",
    TO_CHAR(comp.comp_no, '00000') || ' ' || comp.comp_fname || ' ' || comp.comp_lname AS "Competitor No and Name",
    RPAD(FLOOR(MONTHS_BETWEEN(c.carn_date, comp.comp_dob) / 12), 18) AS "Age at Carnival"
FROM
    entry e
    JOIN competitor comp
        ON e.comp_no = comp.comp_no
    JOIN event evn
        ON e.event_id = evn.event_id
    JOIN eventtype et
        ON evn.eventtype_code = et.eventtype_code
    JOIN carnival c
        ON evn.carn_date = c.carn_date
WHERE
    e.entry_elapsedtime IS NOT NULL
    AND (et.eventtype_code, e.entry_elapsedtime) IN (
        SELECT
            evt2.eventtype_code,
            MIN(e2.entry_elapsedtime)
        FROM
            entry e2
            JOIN event evt2
                ON e2.event_id = evt2.event_id
        WHERE
            e2.entry_elapsedtime IS NOT NULL
        GROUP BY
            evt2.eventtype_code
    )
ORDER BY
    "Event",
    "Competitor No and Name";





/* (c) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer
SELECT
    ce.carn_name AS "Carnival Name",
    TO_CHAR(ce.carn_date, 'DD Mon YYYY') AS "Carnival Date",
    ce.eventtype_desc AS "Event Description",

    -- Number of Entries: right-aligned if number, left-aligned if Not offered
    CASE 
        WHEN inner_ent."Number of Entries" IS NULL THEN 
            'Not offered'  -- left-aligned by default
        ELSE 
            LPAD(inner_ent."Number of Entries", 18)  -- right-aligned
    END AS "Number of Entries",

    -- % of Carnival Entries: right-aligned if number, blank if no entries
    CASE 
        WHEN inner_ent."Number of Entries" IS NULL THEN 
            ' '  
        ELSE 
            LPAD(ROUND(100 * inner_ent."Number of Entries" / carn_ent."% of Carnival Entries"), 25)
    END AS "% of Carnival Entries"

FROM    
    (SELECT 
        carn_name, 
        carn_date, 
        eventtype_desc
     FROM 
        carnival CROSS JOIN eventtype 
    ) ce

    LEFT OUTER JOIN (
        SELECT 
            c.carn_date,
            et.eventtype_desc,
            COUNT(*) AS "Number of Entries"
        FROM
            carnival c 
            JOIN event e ON c.carn_date = e.carn_date
            JOIN eventtype et ON e.eventtype_code = et.eventtype_code
            JOIN entry ent ON ent.event_id = e.event_id
        GROUP BY
            c.carn_date,
            et.eventtype_desc
    ) inner_ent
    ON ce.carn_date = inner_ent.carn_date AND ce.eventtype_desc = inner_ent.eventtype_desc

    JOIN (
        SELECT 
            c.carn_date, 
            COUNT(*) AS "% of Carnival Entries"
        FROM 
            carnival c 
            JOIN event e ON c.carn_date = e.carn_date
            JOIN eventtype et ON e.eventtype_code = et.eventtype_code
            JOIN entry ent ON ent.event_id = e.event_id
        GROUP BY 
            c.carn_date
    ) carn_ent
    ON ce.carn_date = carn_ent.carn_date

ORDER BY
    ce.carn_date,
    inner_ent."Number of Entries" DESC NULLS LAST,
    ce.eventtype_desc;


