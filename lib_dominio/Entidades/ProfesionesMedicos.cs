using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace lib_dominio.Entidades
{
    class ProfesionesMedicos
    {

        public int Id { get; set; }
        public int Medico { get; set; }
        public int Profesion { get; set; }

        public Profesiones? _Profesion { get; set; }
        public Medicos? _Medico { get; set; }

    }
}
