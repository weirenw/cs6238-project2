CREATE TABLE document (
      id text PRIMARY KEY NOT NULL,
      integrity_flag integer(1) DEFAULT(0),
      confidentiality_flag integer(1) DEFAULT(0),
      owner_uid text(128) NOT NULL,
      file_name text(128) NOT NULL,
      file blob
);

CREATE TABLE document_access (
      uid text(128) NOT NULL,
      document_id text(128) NOT NULL,
      until TEXT,
      permission TEXT NOT NULL,
      propagate integer(1) DEFAULT(0),
      PRIMARY KEY(uid, document_id)
);

CREATE TABLE document_owner (
      uid text(128) NOT NULL,
      document_id text(128) NOT NULL,
      until TEXT,
      PRIMARY KEY(uid, document_id)
);

CREATE TABLE users (
      uid text PRIMARY KEY NOT NULL
);

PRAGMA secure_delete = true;