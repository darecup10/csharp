using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace presentacionConsola
{
    class Program
    {
        static void Main(string[] args)
        {
            entidades.Alumno objEntidadAlumno = new entidades.Alumno();
            //Ingresar un dato manualmente
            //objEntidadAlumno.DNI = 95675394;
            //objEntidadAlumno.Apellido = "Picon";
            //objEntidadAlumno.Nombre = "Darelis";

            //Pedir al usuario que agregue un alumno
            Console.Write("Ingrese DNI: ");
            objEntidadAlumno.DNI = Convert.ToInt32(Console.ReadLine());

            Console.Write("Ingrese Apellido: ");
            objEntidadAlumno.Apellido = Console.ReadLine();

            Console.Write("Ingrese Nombre: ");
            objEntidadAlumno.Nombre = Console.ReadLine();




            logica.Alumno objLogicaAlumno = new logica.Alumno();
            objLogicaAlumno.Agregar(objEntidadAlumno);

            Console.WriteLine("Alumno Agregado");
            Console.ReadKey();

        }
    }
}
