using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsolaProfesor
{
    class Program
    {
        static void Main(string[] args)
        {
            entidades.Profesor objEntidadProfesor = new entidades.Profesor();

            //Pedir al usuario que agregue un profesor

            Console.Write("Ingrese Apellido: ");
            objEntidadProfesor.Apellido = Console.ReadLine();

            Console.Write("Ingrese Nombre: ");
            objEntidadProfesor.Nombre = Console.ReadLine();

            Console.Write("Ingrese Email: ");
            objEntidadProfesor.Email = Console.ReadLine();




            logica.Profesor objLogicaProfesor = new logica.Profesor();
            objLogicaProfesor.Agregar(objEntidadProfesor);

            Console.WriteLine("Profesor Agregado");
            Console.ReadKey();

        }
    }
}