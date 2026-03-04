{*************************************************************************}
{ Parche para corregir defecto de rejillas DBGrid (presente en Delphi     }
{ 2007, 2009 y quizá otras versiones) cuando se hace clic en el área      }
{ vacía de la rejilla.                                                    }
{                                                                         }
{ Por Al González, marzo de 2011.  Disponga de este código libremente.    }
{                                                                         }
{ Uso:                                                                    }
{                                                                         }
{ 1. Agregue al "Library Path" la ruta del directorio contenedor de este  }
{    archivo.                                                             }
{ 2. Agregue "GridClickPatch" al final de la primera cláusula Uses de     }
{    cualquier formulario que contenga componentes TDBGrid.               }
{*************************************************************************}

Unit GridClickPatch;

Interface

Uses
  DBGrids;

Type
  { Clase interpuesta TDBGrid }
  TDBGrid = Class (DBGrids.TDBGrid)
    Protected
      { Esta redefinición del método ColEnter nos ayuda a corregir el 
        problema }
      Procedure ColEnter; Override;
  End;

Implementation

  Procedure TDBGrid.ColEnter;
  Begin
    { Alguna de las columnas ha adquirido el foco.  Esta llamada al método
      GetEditText hace que el campo privado FEditText del objeto rejilla se
      actualice al valor del campo que corresponde a esa columna.  Así, 
      cuando el método MouseDown llame al método UpdateData por haberse 
      dado un clic en el área vacía, UpdateData no hará ninguna asignación 
      indebida. Véanse los métodos MouseDown, UpdateData y GetEditText de
      TCustomDBGrid (en DBGrids.pas). }
    GetEditText (Col, Row);
    
    Inherited ColEnter;
  End;
  
End.
