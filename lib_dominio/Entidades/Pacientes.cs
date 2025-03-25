using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace lib_dominio.Entidades
{
    class Pacientes
    {

        public int Regimen { get; set; }

        public int Id { get; set; }
        public int CC { get; set; }
        public string? Nombre { get; set; }
        public string? Apellido { get; set; }
        public string? Telefono { get; set; }
        public string? Correo { get; set; }
        public string? Genero { get; set; }
        public DateTime Fecha_Nacimiento { get; set; }
        public string? Tipo_Sangre { get; set; }

        public Regimenes? _Regimen { get; set; }

        public List<Consultas>? consultas { get; set; }

    }
}
