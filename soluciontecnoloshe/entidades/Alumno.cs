
namespace entidades
{
    public class Alumno
    {
        //Atributos
        private int dni;
        private string apellido;
        private string nombre;
        //Propiedad (encapsular atributos)
        //propiedades explicitas 
        public int DNI
        {
            get { return dni; }
            set { dni = value; }
        }
        public string Apellido
        {
            get { return apellido; }
            set { apellido = value; }
        }
        //Propiedad autoimplementada
        public string Nombre { get; set; }

    }
}
