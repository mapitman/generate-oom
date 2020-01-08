using System;

namespace generate_oom
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Building big strings!");

            var s = "foobar";

            while (true)
            {
                s += s;
            }
        }
    }
}
