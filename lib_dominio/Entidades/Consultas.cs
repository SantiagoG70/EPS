using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace lib_dominio.Entidades
{
    class Consultas
    {
        public int Id { get; set; }
        public int Medico { get; set; }
        public int Paciente { get; set; }
        public int Medicamento { get; set; }
        public DateTime Fecha_Consulta { get; set; }
        public DateTime Hora_Consulta { get; set; }
        public string? Motivo_Consulta { get; set; }
        public string? Estado_Cita { get; set; }
        public string? Tipo_Consulta { get; set; }

    
        public Medicamentos? _Medicamento {get; set;}
        public Medicos? _Medico { get; set; }
        public Pacientes? _Paciente { get; set; }

        public List<MedicamentosConsultas>? _medicamentosConsultas { get; set; }

    }
}
