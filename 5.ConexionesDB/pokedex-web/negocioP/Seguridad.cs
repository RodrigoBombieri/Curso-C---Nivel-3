using dominioP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace negocioP
{
    public static class Seguridad
    {
        public static bool sesionActiva(object user)
        {
            /// Si es distinto de null es porque hay un usuario logueado
            /// Si no hay un usuario logueado redirecciono a la pagina de login          
            Trainee trainee = user != null ? (Trainee) user : null;
            /// Si el trainee es distinto de null y el id es distinto de 0 significa que hay un usuario logueado
            /// Entonces develvo true porque la sesion esta activa
            if (trainee != null && trainee.Id != 0)
                return true;
            else
            {
                return false;
            }
        }

        public static bool esAdmin(object user)
        {
            Trainee trainee = user != null ? (Trainee)user : null;
            /// si el trainee es distinto de null devuelvo el valor de admin
            return trainee != null ? trainee.Admin : false;
        }
    }
}
