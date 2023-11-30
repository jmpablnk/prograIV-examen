using System;
using System.Collections.Generic;

namespace examenPIV.Models;

public partial class Producto
{
    public int IdProducto { get; set; }

    public string DescProducto { get; set; } = null!;

    public int AnioFabricacion { get; set; }

    public string CasaFabricacion { get; set; } = null!;

    public string EstadoProducto { get; set; } = null!;

    public string AreaTratamiento { get; set; } = null!;
}
