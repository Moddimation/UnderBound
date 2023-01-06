c= 0;
ini_open("undertale.ini");
M1= ini_read_real("Papyrus", "PK", 0);
ini_write_real("Papyrus", "PK", M1 + 1);
ini_close();

