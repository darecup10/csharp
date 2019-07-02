using System;
using System.Data;
using System.Data.SqlClient;

namespace datos
{
    public class Alumno
    {
        //Metodo Agregar
        public void Agregar(entidades.Alumno alumno)

        {
            string strConexion = @"Server=CPX-C5C016FXUF9\TRAINING;database=tecno;Integrated Security=true";
            string strSQL = @"insert alumnos(dni,apellido,nombre) values (@dni,@apellido,@nombre)";
            SqlConnection objConnection = new SqlConnection();
            objConnection.ConnectionString = strConexion;

            SqlCommand objCommand = new SqlCommand();
            objCommand.CommandText = strSQL;
            objCommand.Connection = objConnection;

            //Parametros
            objCommand.Parameters.AddWithValue("@dni", alumno.DNI);
            objCommand.Parameters.AddWithValue("@apellido", alumno.Apellido);
            objCommand.Parameters.AddWithValue("@nombre", alumno.Nombre);

            //Abro la conexion
            objConnection.Open();
            objCommand.ExecuteNonQuery();
            objConnection.Close();



        }

        public DataTable TraerTodos()
        {
            DataTable dt = new DataTable();
            string strConexion = @"Server=CPX-C5C016FXUF9\TRAINING;database=tecno;Integrated Security=true";
            string strSQL = "select * from Alumnos";
            //                           sentencia a ejecutar y lugar de donde lo voy a ejecutar
            SqlDataAdapter objData = new SqlDataAdapter(strSQL, strConexion );

            //aca se llena la tabla con los datos suministrados
            objData.Fill(dt);

            //se devuelve la informacion
            return dt;


        }
    }
}
