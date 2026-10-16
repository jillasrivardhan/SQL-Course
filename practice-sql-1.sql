create database triggers;

use triggers;

use revision;

call dt();

use information_schema;

show tables;

select 
ROUTINE_DEFINITION
from routines where 
ROUTINE_SCHEMA = 'revision';


