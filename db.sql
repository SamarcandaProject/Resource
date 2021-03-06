CREATE TABLE Sedi (Name TEXT NOT NULL,Id TEXT NOT NULL PRIMARY KEY );
CREATE TABLE Dipartimento (Name TEXT NOT NULL,Id TEXT NOT NULL PRIMARY KEY );
CREATE TABLE Docente (Name TEXT NOT NULL,Id TEXT NOT NULL PRIMARY KEY );
CREATE TABLE Aulee (Name TEXT NOT NULL,Sede TEXT NOT NULL,Id TEXT NOT NULL PRIMARY KEY , FOREIGN KEY (Sede) REFERENCES Sedi(Id));
CREATE TABLE Laurea (Name TEXT NOT NULL,Dipartimento TEXT NOT NULL,Id TEXT NOT NULL PRIMARY KEY , FOREIGN KEY (Dipartimento) REFERENCES Dipartimento(Id));
CREATE TABLE Corso (Name TEXT NOT NULL,Laurea TEXT NOT NULL,Id TEXT NOT NULL PRIMARY KEY , FOREIGN KEY (Laurea) REFERENCES Dipartimento(Id));
CREATE TABLE Lezioni (Name TEXT NOT NULL,Day TEXT NOT NULL,Start TEXT NOT NULL,End TEXT NOT NULL,Room TEXT NOT NULL,Teacher TEXT NOT NULL,Tipo TEXT NOT NULL,Note TEXT NOT NULL,Id TEXT NOT NULL PRIMARY KEY , FOREIGN KEY (Teacher) REFERENCES Docente(Id), FOREIGN KEY (Room) REFERENCES Aulee(Id));
CREATE TABLE Url (urls TEXT NOT NULL PRIMARY KEY ,Laurea TEXT NOT NULL,Id TEXT NOT NULL, FOREIGN KEY (Id) REFERENCES Laurea(Id));
