using Newtonsoft.Json;
using System.Xml.Linq;

namespace Backend02
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var xml = XDocument.Load("people.xml");
            //foreach (var item in
            //    xml.Element("people")!.Elements("person"))
            //{
            //    Console.WriteLine(item.Element("name")?.Value);
            //}

            //linq: 27 évnél idősebbek nevei
            //var q = from item in xml.Element("people")!.Elements("person")
            //        where int.Parse(item.Element("age")!.Value) > 27
            //        select item.Element("name")!.Value;

            var jsondata = File.ReadAllText("people.json");
            var people = JsonConvert
                .DeserializeObject<List<Person>>(jsondata);
            
            //linq: 27 évnél idősebbek közül életkor alapján
            //csökkenő sorrendben az első 3 személy neve

            var q = people?.Where(t => t.Age > 27)
                .OrderByDescending(t => t.Age)
                .Take(3)
                .Select(t => t.Name);

            

        }
    }
}
