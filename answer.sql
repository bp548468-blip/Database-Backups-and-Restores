-- ============================================================
-- WEEK 8 ASSIGNMENT: MySQL Database Backup and Restore
-- Database: sales
-- Tool: mysqldump
-- ============================================================

-- ------------------------------------------------------------
-- QUESTION 1: Creating a Complete Database Backup
-- ------------------------------------------------------------
-- Task: Create a complete backup of the sales database before
-- performing any major database changes.

-- Command to run in Terminal (NOT inside MySQL):
-- mysqldump -u root -p sales > sales_backup.sql

-- Explanation:
-- mysqldump          = MySQL backup tool
-- -u root             = Use 'root' as username
-- -p                  = Prompt for password
-- sales               = Database to back up
-- > sales_backup.sql  = Save backup into this file

-- What the command does:
-- It creates a COMPLETE backup of the sales database.
-- It saves both the STRUCTURE (CREATE TABLE statements)
-- and the DATA (INSERT statements) into sales_backup.sql.
-- If anything goes wrong, we can restore the whole database from this file.

-- Why regular backups are important:
-- 1. Disaster Recovery: If the database crashes, is deleted by mistake,
--    or is attacked, we can restore it from the backup.
-- 2. Safety before changes: Before major updates, a backup gives us
--    a safe point to go back to if the change fails.
-- 3. Prevents data loss: Without a backup, losing sales data means
--    losing customer orders, payments and business records forever.

-- ------------------------------------------------------------
-- QUESTION 2: Backing Up All Databases
-- ------------------------------------------------------------
-- Task: Back up every database on the server before a planned
-- server migration.

-- Command to run in Terminal:
-- mysqldump -u root -p --all-databases > all_databases_backup.sql

-- Explanation:
-- mysqldump                = MySQL backup tool
-- -u root                   = Use 'root' as username
-- -p                        = Prompt for password
-- --all-databases           = Export EVERY database on the server,
--                             not just sales
-- > all_databases_backup.sql = Save backup into this file

-- What the command does:
-- It creates one big backup file containing ALL databases
-- on the MySQL server, with their structure + data.

-- Why backing up all databases is important before migration:
-- 1. Nothing is left behind: If we only back up sales, we might lose
--    other databases, users, or settings on the old server.
-- 2. Easy restore: On the new server we can restore everything
--    at once from this one file.
-- 3. Safety net: If the migration fails or the old server is
--    shut down, we still have a complete copy of everything.