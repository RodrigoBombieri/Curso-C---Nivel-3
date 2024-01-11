using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominioP;

namespace negocioP
{
    public class TraineeNegocio
    {
        public int insertarNuevo(Trainee nuevo)
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
            finally
            {
                datos.cerrarConexion();
            }
        }

        public bool login(Trainee trainee)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                /// Si lee el archivo nos va a devolver un registro
                datos.setearConsulta("Select id, email, pass, admin from USERS Where email = @email And pass = @pass");
                datos.setearParametro("@email", trainee.Email);
                datos.setearParametro("@pass", trainee.Pass);
                /// Ejecuto la lectura
                datos.ejecutarLectura();

                /// Si lee el archivo nos va a devolver un registro
                if(datos.Lector.Read())
                {
                    /// Guardo los datos que necesito de la consulta a SQL
                    trainee.Id = (int)datos.Lector["id"];
                    trainee.Admin = (bool)datos.Lector["admin"];
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
