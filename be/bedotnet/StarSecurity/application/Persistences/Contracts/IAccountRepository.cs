﻿using domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace application.Persistences.Contracts
{
	public interface IAccountRepository : IGenericRepository<Account>
	{
	}
}
