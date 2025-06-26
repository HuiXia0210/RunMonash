--****PLEASE ENTER YOUR DETAILS BELOW****
--T3-rm-dm.sql

--Student ID: 33590966
--Student Name: Ooi Hui Xia 

/* Comments for your marker:




*/

--(a)
DROP SEQUENCE COMPETITOR_SEQ;
DROP SEQUENCE TEAM_SEQ;

CREATE SEQUENCE TEAM_SEQ
START WITH 100 INCREMENT BY 5;

CREATE SEQUENCE COMPETITOR_SEQ
START WITH 100 INCREMENT BY 5;





--(b)
INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone
) VALUES (
    COMPETITOR_SEQ.NEXTVAL,
    'Keith',
    'Rose',
    'M',
    TO_DATE('16/AUG/2004','DD/MON/YYYY'),
    'keith.rose@monash.edu',
    'Y',
    '0422141112'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    entry_elapsedtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    (SELECT 
        event_id 
    FROM 
        carnival c 
        JOIN event e 
        ON c.carn_date = e.carn_date
        JOIN eventtype et
        ON e.eventtype_code = et.eventtype_code 
    WHERE 
        UPPER(carn_name) = UPPER('RM WINTER SERIES CAULFIELD 2025')
        AND UPPER(eventtype_desc) = UPPER('10 km run')
    ),

    (SELECT MAX(entry_no) FROM entry) + 1,
    NULL,
    NULL,
    NULL,
    COMPETITOR_SEQ.CURRVAL,
    NULL,
    (SELECT char_id FROM charity WHERE UPPER(char_name) = UPPER('Salvation Army'))
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone
) VALUES (
    COMPETITOR_SEQ.NEXTVAL,
    'Jackson',
    'Bull',
    'M',
    TO_DATE('8/OCT/2003','DD/MON/YYYY'),
    'jackson.bull@monash.edu',
    'Y',
    '0422412524'
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    entry_elapsedtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    (SELECT 
        event_id 
    FROM 
        carnival c 
        JOIN event e 
        ON c.carn_date = e.carn_date
        JOIN eventtype et
        ON e.eventtype_code = et.eventtype_code 
    WHERE 
        UPPER(carn_name) = UPPER('RM WINTER SERIES CAULFIELD 2025')
        AND UPPER(eventtype_desc) = UPPER('10 km run')
    ),

    (SELECT MAX(entry_no) FROM entry) + 1,
    NULL,
    NULL,
    NULL,
    COMPETITOR_SEQ.CURRVAL,
    NULL,
    (SELECT char_id FROM charity WHERE UPPER(char_name) = 'RSPCA')
);


INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    event_id,
    entry_no
) VALUES (
    TEAM_SEQ.NEXTVAL,
    'Super Runners',
    (SELECT carn_date FROM carnival WHERE UPPER(carn_name) = 'RM WINTER SERIES CAULFIELD 2025'),
    (SELECT 
        event_id 
    FROM 
        carnival c 
        JOIN event e 
        ON c.carn_date = e.carn_date
        JOIN eventtype et
        ON e.eventtype_code = et.eventtype_code 
    WHERE 
        UPPER(carn_name) = UPPER('RM WINTER SERIES CAULFIELD 2025')
        AND UPPER(eventtype_desc) = UPPER('10 km run')
    ),
    (SELECT 
        entry_no
    FROM 
        entry e 
        JOIN competitor c
        ON e.comp_no = c.comp_no
    WHERE 
        UPPER(comp_fname) = UPPER('Keith')
        AND UPPER(comp_lname) = UPPER('Rose')
    ) 
);



UPDATE 
    entry 
SET 
    team_id = TEAM_SEQ.CURRVAL 
WHERE 
    event_id = (
        SELECT 
        event_id 
    FROM 
        carnival c 
        JOIN event e 
        ON c.carn_date = e.carn_date
        JOIN eventtype et
        ON e.eventtype_code = et.eventtype_code 
    WHERE 
        UPPER(carn_name) = UPPER('RM WINTER SERIES CAULFIELD 2025')
        AND UPPER(eventtype_desc) = UPPER('10 km run')
    ) 
    AND entry_no = (
        SELECT 
        entry_no
    FROM 
        entry e 
        JOIN competitor c
        ON e.comp_no = c.comp_no
    WHERE 
        UPPER(comp_fname) = UPPER('Keith')
        AND UPPER(comp_lname) = UPPER('Rose')
    );


UPDATE 
    entry 
SET 
    team_id = TEAM_SEQ.CURRVAL 
WHERE 
    event_id = (
        SELECT 
        event_id 
    FROM 
        carnival c 
        JOIN event e 
        ON c.carn_date = e.carn_date
        JOIN eventtype et
        ON e.eventtype_code = et.eventtype_code 
    WHERE 
        UPPER(carn_name) = UPPER('RM WINTER SERIES CAULFIELD 2025')
        AND UPPER(eventtype_desc) = UPPER('10 km run')
    ) 
    AND entry_no = (
        SELECT 
        entry_no
    FROM 
        entry e 
        JOIN competitor c
        ON e.comp_no = c.comp_no
    WHERE 
        UPPER(comp_fname) = UPPER('Jackson')
        AND UPPER(comp_lname) = UPPER('Bull')
    );

COMMIT;





--(c)
UPDATE 
    entry 
SET 
    event_id = (
        SELECT 
            event_id
        FROM
            event e 
            JOIN carnival cr
            ON e.carn_date = cr.carn_date
            JOIN eventtype et
            ON e.eventtype_code = et.eventtype_code
        WHERE
            UPPER(carn_name) = 'RM WINTER SERIES CAULFIELD 2025'
            AND UPPER(eventtype_desc) = UPPER('5 km run')
    ),
    char_id = (
        SELECT 
            char_id
        FROM 
            charity
        WHERE
            UPPER(char_name) = UPPER('Beyond Blue')
    )
WHERE 
    event_id = (
    SELECT 
        event_id 
    FROM 
        carnival cr 
        JOIN event e 
        ON cr.carn_date = e.carn_date
        JOIN eventtype et
        ON e.eventtype_code = et.eventtype_code 
    WHERE 
        UPPER(carn_name) = UPPER('RM WINTER SERIES CAULFIELD 2025')
        AND UPPER(eventtype_desc) = UPPER('10 km run')
    ) 
    AND entry_no = (
    SELECT 
        entry_no
    FROM 
        entry e 
        JOIN competitor c
        ON e.comp_no = c.comp_no
    WHERE 
        UPPER(comp_fname) = UPPER('Jackson')
        AND UPPER(comp_lname) = UPPER('Bull')
    );

COMMIT;

--(d)
UPDATE 
    entry 
SET 
    team_id = NULL
WHERE 
    team_id = (
        SELECT 
            team_id
        FROM
            team NATURAL JOIN carnival
        WHERE 
            UPPER(team_name) = UPPER('Super Runners')
            AND UPPER(carn_name) = UPPER('RM WINTER SERIES CAULFIELD 2025')
    );


DELETE FROM team
WHERE 
    team_id = (
        SELECT 
            team_id
        FROM
            team NATURAL JOIN carnival
        WHERE 
            UPPER(team_name) = UPPER('Super Runners')
            AND UPPER(carn_name) = UPPER('RM WINTER SERIES CAULFIELD 2025')
    );

DELETE FROM ENTRY
WHERE
    event_id = (
        SELECT 
        event_id 
    FROM 
        carnival cr 
        JOIN event e 
        ON cr.carn_date = e.carn_date
        JOIN eventtype et
        ON e.eventtype_code = et.eventtype_code 
    WHERE 
        UPPER(carn_name) = UPPER('RM WINTER SERIES CAULFIELD 2025')
        AND UPPER(eventtype_desc) = UPPER('10 km run')
    ) 
    AND entry_no = (
        SELECT 
        entry_no
    FROM 
        entry e 
        JOIN competitor c
        ON e.comp_no = c.comp_no
    WHERE 
        UPPER(comp_fname) = UPPER('Keith')
        AND UPPER(comp_lname) = UPPER('Rose')
    );

COMMIT;


SELECT * 
FROM TEAM;


SELECT * 
FROM CARNIVAL;


SELECT * 
FROM ENTRY;

SELECT * 
FROM COMPETITOR;