﻿using System;

namespace Voxtet.Web.Domain
{
    public class Concert
    {
        public Concert(){

        }

        public int Id { get; set; }
        public string Name { get; set; }
        public Date Date { get; set; }
    }
}
