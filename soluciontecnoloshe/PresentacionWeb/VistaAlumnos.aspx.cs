using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PresentacionWeb
{
    public partial class VistaAlumnos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            logica.Alumno ObjLogica = new logica.Alumno();
            gvAlumnos.DataSource = ObjLogica.TraerTodos();
            gvAlumnos.DataBind();

        }
    }
}