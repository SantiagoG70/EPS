using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace lib_dominio.Entidades
{
    class Medicos
    {
        public int Id { get; set; }
        public string? Nombre { get; set; }
        public string? Apellido { get; set; }

        public List<ProfesionesMedicos>? profesionesMedicos { get; set; }
        public List<Consultas>? consultas { get; set; }

    }
}
