program Dereberya2;

{$APPTYPE CONSOLE}

uses
  ADOInt,
  ActiveX,
  ADODB,
  SysUtils;

var Con: _Connection;
  rep: OleVariant;


begin
    CoInitialize(Nil);
    Con:=CoConnection.Create;
    Con.Open('Provider=MSDASQL; Driver={MySQL ODBC 8.0 ANSI Driver}; Server=localhost;Database=sys;','root','123456',-1);
    Con.Execute('CREATE DATABASE if not exists Dereberia;', rep, 1);
    Con.Close;
    Con.Open('Provider=MSDASQL; Driver={MySQL ODBC 8.0 ANSI Driver};Server=localhost;Database=Dereberia;','root;','123456;',-1);
    Con.Execute('CREATE TABLE IF NOT EXISTS Projects (ProjectID INT,Empl_ID INT, ProjectName VARCHAR(45),ProjectStart DATE, ProjectStop DATE,Customer INT)',rep, 1);
    Con.Close;
  { TODO -oUser -cConsole Main : Insert code here }
end.
