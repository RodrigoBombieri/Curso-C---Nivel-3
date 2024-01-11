using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace negocio
{
    public class UsuarioNegocio
    {
        public int insertarNuevo(Usuario nuevo)
        {
			AccesoDatos datos = new AccesoDatos();

			try
			{
				datos.setearProcedimiento("storedInsertarNuevo");
				datos.setearParametro("@email", nuevo.Email);
				datos.setearParametro("@pass", nuevo.Pass);

				return datos.ejecutarAccionScalar();
			}
			catch (Exception ex)
			{

				 throw ex;
			}
        }

		public bool login(Usuario usuario)
		{

			AccesoDatos datos = new AccesoDatos();

			try
			{
				datos.setearConsulta("Select id, email, pass, admin from USERS Where email = @email And pass = @pass");
				datos.setearParametro("@email", usuario.Email);
				datos.setearParametro("@pass", usuario.Pass);
				datos.ejecutarLectura();

				if (datos.Lector.Read())
				{
					usuario.Id = (int)datos.Lector["id"];
					usuario.Admin = (bool)datos.Lector["admin"];
					return true;
				}
				return false;
			}
			catch (Exception ex)
			{

				throw ex;
			}
			finally
			{
				datos.cerrarConexion();
			}
		}
    }
}
