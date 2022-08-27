using ClassLibraryUniversity.Model;
using UniversityApi.ViewModels;

namespace Test
{
    public class UnitTest1
    {
        private readonly UniversityDbContext _universityDbContext;

        public UnitTest1(UniversityDbContext universityDbContext)
        {
            _universityDbContext = universityDbContext;
            
        }
        List<UserViewModel> userViewModels = new List<UserViewModel>();
        //public static IEnumerable<UserViewModel> GetAllUniversities()
        //{
        //    if (userViewModels == null)
        //    {
        //        return Enumerable.Empty<UserViewModel>();
        //    }
        //    return userViewModels;
        //}
    }
}