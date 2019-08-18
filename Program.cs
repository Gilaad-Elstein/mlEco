using System;
namespace MlEco
{
    public class Program
    {
        public static void Main()
        {
            Gtk.Application.Init();
            new TopographyViewerApp();
            Gtk.Application.Run();
            return;
        }

        private static void AppMain()
        {

        }
    }
}
