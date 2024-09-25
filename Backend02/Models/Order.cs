﻿using System;
using System.Collections.Generic;

namespace Backend02.Models;

public partial class Order
{
    public int OrderId { get; set; }

    public int? CustomerId { get; set; }

    public string? ProductName { get; set; }

    public DateOnly? OrderDate { get; set; }

    public decimal? Amount { get; set; }

    public virtual Customer? Customer { get; set; }
}
