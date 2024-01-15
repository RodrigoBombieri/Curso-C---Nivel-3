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

        public void actualizar(Trainee user)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("Update USERS Set nombre = @nombre, apellido = @apellido, imagenPerfil = @imagen, fechaNacimiento = @fecha Where Id = @id");
                datos.setearParametro("@nombre", user.Nombre);
                datos.setearParametro("@apellido", user.Apellido);
                //datos.setearParametro("@imagen", user.ImagenPerfil != null ? user.ImagenPerfil : (object)DBNull.Value);
                /// Usamos el Null Coalescing Operator para que si es null, se guarde en la base de datos como null
                datos.setearParametro("@imagen", (object)user.ImagenPerfil ?? DBNull.Value);
                datos.setearParametro("@fecha", user.FechaNacimiento);
                datos.setearParametro("@id", user.Id);

                datos.ejecutarAccion();
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
                datos.setearConsulta("Select id, email, pass, admin, imagenPerfil, nombre, apellido, fechaNacimiento from USERS Where email = @email And pass = @pass");
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
                    
                    if(!(datos.Lector["imagenPerfil"] is DBNull))
                        trainee.ImagenPerfil = (string)datos.Lector["imagenPerfil"];
                    if (!(datos.Lector["nombre"] is DBNull))
                        trainee.Nombre = (string)datos.Lector["nombre"];
                    if (!(datos.Lector["apellido"] is DBNull))
                        trainee.Apellido = (string)datos.Lector["apellido"];
                    if (!(datos.Lector["fechaNacimiento"] is DBNull))
                        trainee.FechaNacimiento = DateTime.Parse(datos.Lector["fechaNacimiento"].ToString());

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
