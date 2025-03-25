using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace lib_dominio.Entidades
{
    class Medicamentos
    {
        public int Id { get; set; }
        public string? Nombre { get; set; }
        public string? Funcion { get; set; }

        public List<MedicamentosConsultas>? _medicamentosConsultas { get; set; }

    }
}
