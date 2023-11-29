using Demo.Context;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Demo.Controllers
{
    public class StudentController : Controller
    {
        // GET: Student
        db_testEntities db = new db_testEntities();
        public ActionResult Student(tbl_Student obj)
        {
            return View(obj);
        }
        [HttpPost]
        public ActionResult AddStudent(tbl_Student model)
        {
            tbl_Student obj = new tbl_Student();
            if (ModelState.IsValid)
            {
                obj.ID = model.ID;
                obj.Name = model.Name;
                obj.Fname = model.Fname;
                obj.Email = model.Email;
                obj.Mobile = model.Mobile;
                obj.Description = model.Description;

                if (model.ID > 0)
                {
                    db.Entry(obj).State = EntityState.Modified;
                    db.SaveChanges();
                }
                else
                {
                    db.tbl_Student.Add(obj);
                    db.SaveChanges();
                }
                ModelState.Clear();
            }


            return RedirectToAction("StudentList");
        }


        public ActionResult StudentList()
        {
            var res = db.tbl_Student.ToList();
            return View(res);
        }

       public ActionResult Delete(int id)
        {
            var res = db.tbl_Student.Where(x => x.ID == id).First();
            db.tbl_Student.Remove(res);
            db.SaveChanges();

            var list = db.tbl_Student.ToList();

            return View("StudentList", list);
        }
       

    }
}