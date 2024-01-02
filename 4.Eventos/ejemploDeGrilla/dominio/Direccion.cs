using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Direccion
    {
        public int Id { get; set; }
        public string Calle { get; set; }
        public int Numero { get; set; }

    }

    public class DireccionNegocio
    {
        public List<Direccion> listar()
        {
            List<Direccion> lista = new List<Direccion>();
            lista.Add(new Direccion());
            lista.Add(new Direccion());

            lista[0].Id = 1;
            lista[0].Calle = "San Martin";
            lista[0].Numero = 123;

            lista[1].Id = 2;
            lista[1].Calle = "Belgrano";
            lista[1].Numero = 456;

            return lista;
        }
    }
}
