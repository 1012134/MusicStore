using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MusicStore.Models;

namespace MusicStore.Controllers
{
    public class HomeController : Controller
    {
        MUSIC_STOREEntities Db = new MUSIC_STOREEntities();
        public ActionResult Index()
        {
            List<Album> listAlbum = Db.Albums.ToList();
            return View(listAlbum);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}