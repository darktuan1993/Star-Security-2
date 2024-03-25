﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application.DTOs.Common.GetDTO
{
    public abstract class HumanGetDTO : BasicGetDTO
    {

        public string Name { get; set; }
        public string Gender { get; set; }
		public DateTime DateOfBirth { get; set; }
		public string? Address { get; set; }
        public string? ContactNumber { get; set; }
        public string Email { get; set; }
    }
}
