using Newtonsoft.Json;
using System;
using WebApi.Hal;

namespace AppHarbor.Models
{   
    public class CommentModel : Representation
    {
        public int Id { get; set; }
        public int Issue_Id { get; set; }
        public string Text { get; set; }
        public DateTime creationDate { get; set; }
    }
}
