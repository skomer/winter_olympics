DROP TABLE IF EXISTS athletes_events;
DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS athletes;
DROP TABLE IF EXISTS nations;
DROP TABLE IF EXISTS medals;

CREATE TABLE nations (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
  );

CREATE TABLE medals (
  id SERIAL4 PRIMARY KEY,
  type VARCHAR(255)
);

CREATE TABLE athletes (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  name_convention VARCHAR(255),
  nation_id INT4 REFERENCES nations(id) ON DELETE CASCADE
);

CREATE TABLE events (
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(255),
  venue VARCHAR(255)
);

CREATE TABLE athletes_events (
  id SERIAL4 PRIMARY KEY,
  position INT2,
  athlete_id INT4 REFERENCES athletes(id) ON DELETE CASCADE,
  event_id INT4 REFERENCES events(id) ON DELETE CASCADE,
  medal_id INT4 REFERENCES medals(id) ON DELETE CASCADE
);

INSERT INTO medals (type) VALUES ('gold');
INSERT INTO medals (type) VALUES ('silver');
INSERT INTO medals (type) VALUES ('bronze');
INSERT INTO medals (type) VALUES ('no award');
