namespace logica
{
    public class Profesor
    {
      
        public void Agregar(entidades.Profesor pProfesor)
        {
            
            datos.Profesor objProfesor = new datos.Profesor();
            objProfesor.Agregar(pProfesor);
        }
    }
}