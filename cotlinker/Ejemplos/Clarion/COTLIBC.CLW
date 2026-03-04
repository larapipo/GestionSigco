  MEMBER('COTLINKER.clw')

  PRAGMA('define(init_priority=>3)')

  MAP
    MODULE('COTLIBC0.CLW')
COTLIBC0:DctInit             PROCEDURE
COTLIBC0:DctKill             PROCEDURE
COTLIBC0:FilesInit           PROCEDURE
    END
  END

DctInit PROCEDURE
  CODE
  COTLIBC0:DctInit
  COTLIBC0:FilesInit


DctKill PROCEDURE
  CODE
  COTLIBC0:DctKill

