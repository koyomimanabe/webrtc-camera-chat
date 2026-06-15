DROP TABLE IF EXISTS signals;

CREATE TABLE signals (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  room TEXT NOT NULL,
  sender TEXT NOT NULL,
  session_id TEXT,
  type TEXT NOT NULL,
  payload TEXT NOT NULL,
  created_at INTEGER NOT NULL
);

CREATE INDEX idx_signals_room_id ON signals(room, id);
CREATE INDEX idx_signals_session_id ON signals(session_id);
