using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PhucShoes.Models;

namespace PhucShoes.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        DataClasses1DataContext data = new DataClasses1DataContext();
        public ActionResult Index()
        {
            var sanpham = from Giay in  data.Giays select Giay;
            return View(sanpham);
        }

    }
}
