
CREATE OR ALTER PROCEDURE SP_AUDIT_FK_ORPHANS
RETURNS (
  RUN_ID BIGINT
)
AS
  DECLARE fk_name VARCHAR(63);
  DECLARE child_table VARCHAR(63);
  DECLARE parent_table VARCHAR(63);
  DECLARE child_col VARCHAR(63);
  DECLARE parent_col VARCHAR(63);
  DECLARE sql_stmt BLOB SUB_TYPE TEXT;
  DECLARE cnt BIGINT;
BEGIN
  RUN_ID = NEXT VALUE FOR SEQ_FK_AUDIT_RUN;

  FOR
    SELECT
      rc.RDB$CONSTRAINT_NAME,
      rc.RDB$RELATION_NAME,
      rc2.RDB$RELATION_NAME,
      i1.RDB$FIELD_NAME,
      i2.RDB$FIELD_NAME
    FROM RDB$RELATION_CONSTRAINTS rc
    JOIN RDB$REF_CONSTRAINTS refc
      ON refc.RDB$CONSTRAINT_NAME = rc.RDB$CONSTRAINT_NAME
    JOIN RDB$RELATION_CONSTRAINTS rc2
      ON rc2.RDB$CONSTRAINT_NAME = refc.RDB$CONST_NAME_UQ
    JOIN RDB$INDEX_SEGMENTS i1
      ON i1.RDB$INDEX_NAME = rc.RDB$INDEX_NAME
    JOIN RDB$INDEX_SEGMENTS i2
      ON i2.RDB$INDEX_NAME = rc2.RDB$INDEX_NAME
     AND i2.RDB$FIELD_POSITION = i1.RDB$FIELD_POSITION
    WHERE rc.RDB$CONSTRAINT_TYPE = 'FOREIGN KEY'
      -- solo FKs de 1 columna:
      AND i1.RDB$FIELD_POSITION = 0
      AND NOT EXISTS (
        SELECT 1
        FROM RDB$INDEX_SEGMENTS x
        WHERE x.RDB$INDEX_NAME = rc.RDB$INDEX_NAME
          AND x.RDB$FIELD_POSITION > 0
      )
    INTO :fk_name, :child_table, :parent_table, :child_col, :parent_col
  DO
  BEGIN
    fk_name = TRIM(fk_name);
    child_table = TRIM(child_table);
    parent_table = TRIM(parent_table);
    child_col = TRIM(child_col);
    parent_col = TRIM(parent_col);

    sql_stmt =
      'SELECT COUNT(*) FROM ' || child_table || ' c ' ||
      'LEFT JOIN ' || parent_table || ' p ON p.' || parent_col || ' = c.' || child_col || ' ' ||
      'WHERE c.' || child_col || ' IS NOT NULL AND p.' || parent_col || ' IS NULL';

    EXECUTE STATEMENT sql_stmt INTO :cnt;

    INSERT INTO FK_AUDIT (RUN_ID, FK_NAME, CHILD_TABLE, PARENT_TABLE, ORPHANS_CNT)
    VALUES (:RUN_ID, :fk_name, :child_table, :parent_table, :cnt);
  END

  SUSPEND;
END;




