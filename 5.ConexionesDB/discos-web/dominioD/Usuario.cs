﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominioD
{
    public class Usuario
    {
        public int Id { get; set; }
        private string email { get; set; }
        public string Email
        {
            get { return email; }
            set
            {
                if(value != "")
                {
                    email = value;
                }
                else
                {
                    throw new Exception("El email no puede estar vacio");
                }
            }
        }

        public string Pass {  get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public string ImagenPerfil { get; set; }
        public bool Admin {  get; set; }

    }
}
