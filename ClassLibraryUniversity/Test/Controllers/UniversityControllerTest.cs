﻿using ClassLibraryUniversity.Model;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UniversityApi.Controllers;

namespace Test.Controllers
{
    public class UniversityControllerTest
    {
        private UniversityDbContext _universityDbContext;
        public UniversityControllerTest()
        {
            _universityDbContext = new UniversityDbContext();
        }
        [Fact]
        public  void Check_ReturnsAllUniversities()
        {
            ////arrange
            var controller = new UniversityApiController(_universityDbContext);
            var count=_universityDbContext.Universities.Count();

            ////act
            var result = controller.Get().Result;
            var okResult = result as OkObjectResult;

            // assert
            Assert.NotNull(okResult);
            Assert.Equal(200, okResult.StatusCode);
            var model=okResult.Value as DbSet<University>;
            Assert.Equal(count, model.Count());

        }
    }
}
