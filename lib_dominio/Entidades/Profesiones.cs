﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace lib_dominio.Entidades
{
    class Profesiones
    {
        public int Id { get; set; }
        public string? Nombre { get; set; }

        public List<ProfesionesMedicos>? profesionesMedicos { get; set; }


    }
}
