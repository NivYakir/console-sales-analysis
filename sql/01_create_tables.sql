-- ==============================
-- Console Sales Table
-- ==============================

CREATE TABLE console_sales (
    console_name TEXT PRIMARY KEY,
    generation INT NOT NULL,
    manufacturer TEXT NOT NULL,
    released_year INT NOT NULL,
    discontinued_year INT NOT NULL,
    units_sold_m NUMERIC NOT NULL
);

-- ==============================
-- Game Sales Table
-- ==============================

CREATE TABLE game_sales (
    title TEXT NOT NULL,
    console_name TEXT NOT NULL,
    publisher TEXT NOT NULL,
    developer TEXT NOT NULL,
    release_date DATE NOT NULL,
    units_sold_m NUMERIC NOT NULL,
    platform TEXT NOT NULL,
    is_exclusive BOOLEAN NOT NULL,

    CONSTRAINT fk_console
        FOREIGN KEY (console_name)
        REFERENCES console_sales (console_name)
);