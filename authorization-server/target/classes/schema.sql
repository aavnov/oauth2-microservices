DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS authorities;

--CREATE TABLE users
--(
--    id LONG,
--    username VARCHAR(50)  NOT NULL,
--    password VARCHAR(100) NOT NULL,
--    enabled  BOOLEAN      NOT NULL,
--    PRIMARY KEY (username)
--);
--
--CREATE TABLE authorities
--(
--    username  VARCHAR(50) NOT NULL,
--    authority VARCHAR(50) NOT NULL,
--    FOREIGN KEY (username) REFERENCES users (username)
--);

-- //////////////////////////////////////
CREATE TABLE users (
    username VARCHAR(100) NOT NULL PRIMARY KEY,
    password VARCHAR(159) NOT NULL,
    enabled boolean NOT NULL
);

CREATE TABLE authorities (
    username VARCHAR(100) NOT NULL REFERENCES users(username),
    authority VARCHAR(200) NOT NULL
);

--insert into users(username, password, enabled)
--    values('user', '{noop}password', true);
--
--insert into users(username, password, enabled)
--    values('admin', '{noop}password', true);
--
--insert into authorities(username, authority)
--    values('user', 'ROLE_USER');
--
--insert into authorities(username, authority)
--    values('admin', 'ROLE_ADMIN');
