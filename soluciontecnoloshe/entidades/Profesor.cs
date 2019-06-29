
namespace entidades
{
    public class Profesor
    {
        //Atributos
        private int id;
        private string apellido;
        private string nombre;
        private string email;
        //Propiedad (encapsular atributos)
        //propiedades explicitas 
  
        public string Apellido
        {
            get { return apellido; }
            set { apellido = value; }
        }
        //Propiedad autoimplementada
        public string Nombre { get; set; }

        public string Email { get; set; }
        public string ID { get; set; }

    }
}