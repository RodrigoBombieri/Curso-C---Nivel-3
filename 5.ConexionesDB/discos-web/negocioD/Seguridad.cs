using dominioD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace negocioD
{
    public static class Seguridad
    {
        public static bool sesionActiva(Object user)
        {
			try
			{
                Usuario usuario = user != null ? (Usuario)user : null;
                /// Si no se logueo ningun usuario, la sessionActiva devuelve false
                /// Sino, la sessionActiva devuelve true
                if (!(usuario != null && usuario.Id != 0))
                    return false;
                else
                    return true;
			}
			catch (Exception ex)
			{
				
				throw ex;
			}
        }

        public static bool esAdmin(Object user)
        {
            Usuario usuario = user != null ? (Usuario)user : null;
            return usuario != null ? usuario.Admin : false;
        }
    }
}
