﻿using System;
namespace MlEco
{
    public class Program
    {
        public static void Main()
        {
            AppMain();
        }

        private static void AppMain()
        {
            Gtk.Application.Init();
            new MlEcoApp();
            Gtk.Application.Run();
            return;
        }
    }
}
