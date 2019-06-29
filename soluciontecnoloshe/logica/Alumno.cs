

namespace logica
{
    public class Alumno
    {
        //Metodos
        /// <summary>
        /// Llama al metodo agregar datos
        /// Creado por Darelis
        /// Fecha de creacion: 21/06/2019
        /// </summary>
        /// <param name="pAlumno"></param>
        public void Agregar(entidades.Alumno pAlumno)
        {
            //TODO llamar a metodo agregar de la capa de datos.
            datos.Alumno objAlumno = new datos.Alumno();
            objAlumno.Agregar(pAlumno);
        }
    }
}
