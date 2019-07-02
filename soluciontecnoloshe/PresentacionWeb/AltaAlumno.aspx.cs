using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PresentacionWeb
{
    public partial class AltaAlumno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            entidades.Alumno EnviarAlumnoE = new entidades.Alumno();

            logica.Alumno EnviarAlumnoL = new logica.Alumno();

            //Actua como un console.writeline
          
            EnviarAlumnoE.DNI = Convert.ToInt32(txtDNI.Text);
            EnviarAlumnoE.Apellido = txtApellido.Text;
            EnviarAlumnoE.Nombre = txtNombre.Text;

            EnviarAlumnoL.Agregar(EnviarAlumnoE);
            lblMessage.Text = "Alumno Agregado";

        }
    }
}