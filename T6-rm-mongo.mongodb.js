// *****PLEASE ENTER YOUR DETAILS BELOW*****
// T6-rm-mongo.mongodb.js

// Student ID: 33590966
// Student Name: Ooi Hui Xia

// Comments for your marker:

// ===================================================================================
// DO NOT modify or remove any of the comments below (items marked with //)
// ===================================================================================

// Use (connect to) your database - you MUST update xyz001
// with your authcate username

use("hooi0003");


db.getCollectionNames;
// (b)
// PLEASE PLACE REQUIRED MONGODB COMMAND TO CREATE THE COLLECTION HERE
// YOU MAY PICK ANY COLLECTION NAME
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

// Drop collection
db.carnival_teaminfo.drop();


// Create collection and insert documents
db.createCollection("carnival_teaminfo");


db.carnival_teaminfo.insertMany([
  {
    _id: 1,
    carn_name: "RM Spring Series Clayton 2024",
    carn_date: "22-Sep-2024",
    team_name: "Coyotes",
    team_leader: {
      name: "Amy Ooi",
      phone: "0400000001",
      email: "amyooi@gmail.com"
    },
    team_no_of_members: 5,
    team_members: [
      {
        competitor_name: "Amy Ooi",
        competitor_phone: "0400000001",
        event_type: "5 Km Run",
        entry_no: 1,
        starttime: "09:00:00",
        finishtime: "09:15:00",
        elapsedtime: "00:15:00"
      },
      {
        competitor_name: "William Seng",
        competitor_phone: "0400000014",
        event_type: "5 Km Run",
        entry_no: 31,
        starttime: "09:30:00",
        finishtime: "09:47:00",
        elapsedtime: "00:17:00"
      },
      {
        competitor_name: "Leo Tan",
        competitor_phone: "0400000012",
        event_type: "10 Km Run",
        entry_no: 14,
        starttime: "08:00:00",
        finishtime: "08:30:00",
        elapsedtime: "00:30:00"
      },
      {
        competitor_name: "Vanh Goh",
        competitor_phone: "0400000010",
        event_type: "3 Km Community Run/Walk",
        entry_no: 12,
        starttime: "11:00:00",
        finishtime: "11:17:00",
        elapsedtime: "00:17:00"
      },
      {
        competitor_name: "Pei Chuah",
        competitor_phone: "0400000004",
        event_type: "10 Km Run",
        entry_no: 4,
        starttime: "09:00:00",
        finishtime: "09:10:00",
        elapsedtime: "00:10:00"
      },
      {
        competitor_name: "Amy Ooi",
        competitor_phone: "0400000001",
        event_type: "5 Km Run",
        entry_no: 34,
        starttime: "11:00:00",
        finishtime: "12:00:00",
        elapsedtime: "12:28:00"
      },
      {
        competitor_name: "Amy Ooi",
        competitor_phone: "0400000001",
        event_type: "5 Km Run",
        entry_no: 7,
        starttime: "09:00:00",
        finishtime: "09:19:00",
        elapsedtime: "00:19:00"
      },
      {
        competitor_name: "Amy Ooi",
        competitor_phone: "0400000001",
        event_type: "3 Km Community Run/Walk",
        entry_no: 18,
        starttime: "12:00:00",
        finishtime: "12:18:00",
        elapsedtime: "00:18:00"
      }
    ]
  },
  {
    _id: 2,
    carn_name: "RM Autumn Series Clayton 2025",
    carn_date: "15-Mar-2025",
    team_name: "Coyotes",
    team_leader: {
      name: "David King",
      phone: "0400000003",
      email: "kingdavid@gmail.com"
    },
    team_no_of_members: 5,
    team_members: [
      {
        competitor_name: "Henry Lau",
        competitor_phone: "0400000002",
        event_type: "10 Km Run",
        entry_no: 8,
        starttime: "10:10:00",
        finishtime: "10:30:00",
        elapsedtime: "00:20:00"
      },
      {
        competitor_name: "Nathan Sim",
        competitor_phone: "0400000015",
        event_type: "10 Km Run",
        entry_no: 32,
        starttime: "10:00:00",
        finishtime: "10:15:00",
        elapsedtime: "00:15:00"
      },
      {
        competitor_name: "Kelly Lau",
        competitor_phone: "0400000011",
        event_type: "5 Km Run",
        entry_no: 13,
        starttime: "12:00:00",
        finishtime: "12:22:00",
        elapsedtime: "00:22:00"
      },
      {
        competitor_name: "Eva Ng",
        competitor_phone: "0400000005",
        event_type: "5 Km Run",
        entry_no: 15,
        starttime: "09:00:00",
        finishtime: "09:25:00",
        elapsedtime: "00:25:00"
      },
      {
        competitor_name: "David King",
        competitor_phone: "0400000003",
        event_type: "10 Km Run",
        entry_no: 19,
        starttime: "08:30:00",
        finishtime: "08:43:00",
        elapsedtime: "00:13:00"
      },
      {
        competitor_name: "David King",
        competitor_phone: "0400000003",
        event_type: "5 Km Run",
        entry_no: 3,
        starttime: "11:00:00",
        finishtime: "11:25:00",
        elapsedtime: "00:25:00"
      },
      {
        competitor_name: "Henry Lau",
        competitor_phone: "0400000002",
        event_type: "3 Km Community Run/Walk",
        entry_no: 35,
        starttime: "13:00:00",
        finishtime: "13:18:00",
        elapsedtime: "00:18:00"
      }
    ]
  },
  {
    _id: 3,
    carn_name: "RM Spring Series Caulfield 2024",
    carn_date: "05-Oct-2024",
    team_name: "Falcons",
    team_leader: {
      name: "Henry Lau",
      phone: "0400000002",
      email: "henrylau@gmail.com"
    },
    team_no_of_members: 4,
    team_members: [
      {
        competitor_name: "Amy Ooi",
        competitor_phone: "0400000001",
        event_type: "10 Km Run",
        entry_no: 16,
        starttime: "10:00:00",
        finishtime: "10:22:00",
        elapsedtime: "00:22:00"
      },
      {
        competitor_name: "Olivia Teo",
        competitor_phone: "0400000016",
        event_type: "5 Km Run",
        entry_no: 33,
        starttime: "11:00:00",
        finishtime: "11:19:00",
        elapsedtime: "00:19:00"
      },
      {
        competitor_name: "Kelly Lau",
        competitor_phone: "0400000011",
        event_type: "10 Km Run",
        entry_no: 28,
        starttime: "10:00:00",
        finishtime: "10:30:00",
        elapsedtime: "00:30:00"
      },
      {
        competitor_name: "Henry Lau",
        competitor_phone: "0400000002",
        event_type: "21.1 Km Half Marathon",
        entry_no: 20,
        starttime: "09:00:00",
        finishtime: "09:12:00",
        elapsedtime: "00:12:00"
      },
      {
        competitor_name: "Henry Lau",
        competitor_phone: "0400000002",
        event_type: "10 Km Run",
        entry_no: 2,
        starttime: "10:00:00",
        finishtime: "10:20:00",
        elapsedtime: "00:20:00"
      }
    ]
  }, 
  {
    _id: 4,
    carn_name: "RM Winter Series Caulfield 2024",
    carn_date: "29-Jun-2025",
    team_name: "Wolves",
    team_leader: {
      name: "Eva Ng",
      phone: "0400000005",
      email: "evelynha@gmail.com"
    },
    team_no_of_members: 5,
    team_members: [
      {
        competitor_name: "Pei Chuah",
        competitor_phone: "0400000004",
        event_type: "10 Km Run",
        entry_no: 21,
        starttime: "10:00:00",
        finishtime: "10:28:00",
        elapsedtime: "00:28:00"
      },
      {
        competitor_name: "Leo Tan",
        competitor_phone: "0400000012",
        event_type: "5 Km Run",
        entry_no: 29,
        starttime: "11:00:00",
        finishtime: "11:25:00",
        elapsedtime: "00:25:00"
      },
      {
        competitor_name: "Wilson Lim",
        competitor_phone: "0400000007",
        event_type: "5 Km Run",
        entry_no: 9,
        starttime: "11:15:00",
        finishtime: "11:40:00",
        elapsedtime: "00:25:00"
      },
      {
        competitor_name: "Frank Zhou",
        competitor_phone: "0400000006",
        event_type: "5 Km Run",
        entry_no: 17,
        starttime: "11:00:00",
        finishtime: "11:17:00",
        elapsedtime: "00:17:00"
      },
      {
        competitor_name: "Eva Ng",
        competitor_phone: "0400000005",
        event_type: "21.1 Km Half Marathon",
        entry_no: 15,
        starttime: "10:30:00",
        finishtime: "10:45:00",
        elapsedtime: "00:15:00"
      }
    ]
  },
  {
    _id: 5,
    carn_name: "RM Summer Series Caulfield 2024",
    carn_date: "02-Feb-2025",
    team_name: "Ravens",
    team_leader: {
      name: "Eva Ng",
      phone: "0400000005",
      email: "evelynha@gmail.com"
    },
    team_no_of_members: 2,
    team_members: [
      {
        competitor_name: "Eva Ng",
        competitor_phone: "0400000005",
        event_type: "10 Km Run",
        entry_no: 10,
        starttime: "09:00:00",
        finishtime: "09:12:00",
        elapsedtime: "00:12:00"
      },
      {
        competitor_name: "Winnie Ng",
        competitor_phone: "0400000013",
        event_type: "10 Km Run",
        entry_no: 30,
        starttime: "13:00:00",
        finishtime: "13:11:00",
        elapsedtime: "00:11:00"
      },
      {
        competitor_name: "Eva Ng",
        competitor_phone: "0400000005",
        event_type: "5 Km Run",
        entry_no: 22,
        starttime: "11:00:00",
        finishtime: "11:24:00",
        elapsedtime: "00:24:00"
      }
    ]
  }, 
  {
    _id: 6,
    carn_name: "RM Autumn Series Clayton 2025",
    carn_date: "15-Mar-2025",
    team_name: "Tiger",
    team_leader: {
      name: "Frank Zhou",
      phone: "0400000006",
      email: "frankzhou@yahoo.com"
    },
    team_no_of_members: 2,
    team_members: [
      {
        competitor_name: "Frank Zhou",
        competitor_phone: "0400000006",
        event_type: "3 Km Community Run/Walk",
        entry_no: 6,
        starttime: "11:00:00",
        finishtime: "11:18:00",
        elapsedtime: "00:18:00"
      },
      {
        competitor_name: "James Goh",
        competitor_phone: "0400000009",
        event_type: "21.1 Km Half Marathon",
        entry_no: 11,
        starttime: "10:30:00",
        finishtime: "10:43:00",
        elapsedtime: "00:13:00"
      }
    ]
  }
]);



// List all documents you added
db.carnival_teaminfo.find();






// (c)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer
db.carnival_teaminfo.find(
    {"$or": [{"team_members.event_type": /.*10 K.*/}, {"team_members.event_type": /.*5 K.*/}]},
    {"carn_date": 1, "carn_name": 1, "team_name": 1, "team_leader.name": 1}
);


// (d)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer


// (i) Add new team
db.carnival_teaminfo.insertOne({
  _id: 7,
  carn_name: "RM WINTER SERIES CAULFIELD 2025",
  carn_date: "29-Jun-2025",
  team_name: "The Great Runners",
  team_leader: {
    name: "Jackson Bull",
    phone: "0422412524",
    email: "jacksonbull@gmail.com"
  },
  team_no_of_members: 1,
  team_members: [
    {
      competitor_name: "Jackson Bull",
      competitor_phone: "0422412524",
      event_type: "5 Km Run",
      entry_no: 88,
      starttime: null,
      finishtime: null,
      elapsedtime: null
    }
  ]
});






// Illustrate/confirm changes made
db.carnival_teaminfo.find(
  { team_name: "The Great Runners" },
  { _id: 0 }
);





// (ii) Add new team member
db.carnival_teaminfo.updateOne(
  { _id: 7, team_name: "The Great Runners" },
  {
    $push: {
      team_members: {
        competitor_name: "Steve Bull",
        competitor_phone: "0422251427",
        event_type: "10 Km Run",
        entry_no: 55,
        starttime: null,
        finishtime: null,
        elapsedtime: null
      }
    },
    $inc: { team_no_of_members: 1 }
  }
);




// Illustrate/confirm changes made
db.carnival_teaminfo.find(
  { _id: 7, team_name: "The Great Runners" },
  { _id: 0 }
);


