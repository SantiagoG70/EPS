using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace lib_dominio.Entidades
{
    class MedicamentosConsultas
    {

        public int Id { get; set; }

        public int Consulta { get; set; }
        public int Medicamento { get; set; }

        public Consultas? _Consulta { get; set; }
        public Medicamentos? _Medicamento { get; set; }

    }
}
