using System;

namespace AppHarbor.Web.Models
{   
    public class CommentModel 
    {
        public int Id { get; set; }
        public int Issue_Id { get; set; }
        public string Text { get; set; }
        public DateTime creationDate { get; set; }
    }
}