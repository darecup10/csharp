using System;
using System.Data;
using System.Data.SqlClient;

namespace datos
{
    public class Profesor
    {
        //Metodo Agregar
        public void Agregar(entidades.Profesor profesor)
        {
            string strConexion = @"Server=CPX-C5C016FXUF9\TRAINING;database=tecno;Integrated Security=true";
            string strSQL = @"insert profesores(apellido,nombre,email) values (@apellido,@nombre,@email)";
            SqlConnection objConnection = new SqlConnection();
            objConnection.ConnectionString = strConexion;

            SqlCommand objCommand = new SqlCommand();
            objCommand.CommandText = strSQL;
            objCommand.Connection = objConnection;

            //Parametros
            
            objCommand.Parameters.AddWithValue("@apellido", profesor.Apellido);
            objCommand.Parameters.AddWithValue("@nombre", profesor.Nombre);
            objCommand.Parameters.AddWithValue("@email", profesor.Email);

            //Abro la conexion
            objConnection.Open();
            objCommand.ExecuteNonQuery();
            objConnection.Close();


        }

    }
}

