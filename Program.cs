using System;
namespace MlEco
{
    public class Program
    {
        public static void Main()
        {
            AppMain(/* diagnostics = */ true );
        }

        private static void AppMain(bool diagnostics = false)
        {
            if (diagnostics)
            {
                Diagnostics.Run();
                return;
            }
            else
            {
                Gtk.Application.Init();
                new MlEcoApp();
                Gtk.Application.Run();
                return;
            }
        }
    }
}
