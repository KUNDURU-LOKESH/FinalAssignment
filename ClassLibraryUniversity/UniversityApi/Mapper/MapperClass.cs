using AutoMapper;
using ClassLibraryUniversity.Model;
using UniversityApi.ViewModels;
using UniversityWebApp.Models;

namespace UniversityApi.Mapper
{
    public class MapperClass:Profile
    {
        public MapperClass()
        {
            CreateMap<University,UniversityModel>();
            CreateMap<Users, UserViewModel>();
            CreateMap<UserViewModel, Users>();
        }
    }
}
