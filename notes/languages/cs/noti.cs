using System;
using System.Diagnostics;
using System.IO;

namespace Noti
{
    class Program
    {
        static void Main(string[] args)
        {
            string notesDirectory = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "code/noti/notes");
            string notiDirectory = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "code/noti/noti");

            if (args.Length > 0)
            {
                string arg = args[0];

                if (arg == "-help")
                {
                    Console.WriteLine(@"
Options:
    -a, noti tree   Display Noti's file system. Changing the file system may cause your noti to malfunction.
    -d, count def   Count your number of definitions in your Noti's dictionnary. In notes/dictionnary.
    -e, edit        Edit a note in your Noti. When editing a tool or language's notes, specify the language or tool.
    -l, list lang   List all supported programming languages in the Language folder. In notes/languages.
    -t, list tool   List all supported programming languages in the Language folder. In notes/languages.
    -w, write
        -wa,        Write a new definition in Dictionnary
        -wl,        Write a new note in Languages
        -wt,        Write a new note in Tools
        -wx,        Write a new note in Linux 
    -x, count lin   Count your number of notes in Linux 

   -- in progress -- noti rs ls : list all notes in rust

---------------------------------------------
                ");
                }
                else if (arg == "-a")
                {
                    Console.WriteLine(@"# Noti assumes this architecture for notes

    Notes  
      |
      ------ definitions
      |
      ------ languages
      |           |
      |           ---- cs
      |           ---- py
      |                etc 
      ------ linux
      |
      ------ tools
                |
                ---- vi
                ---- tm
                     etc
                ");
                }
                else if (arg == "-d")
                {
                    int numDefinitions = Directory.GetFiles(Path.Combine(notesDirectory, "dictionary")).Length;
                    Console.WriteLine($@"Currently, your Noti has {numDefinitions} definitions!");
                }
                else if (arg == "-e")
                {
                    if (args.Length == 3)
                    {
                        // if three args given, have language first.
                        // noti -e rs if
                        string arguments = $"{args[2]} {args[1]}";
                        Process.Start(Path.Combine(notiDirectory, "editor.sh"), arguments);
                    }
                    else
                    {
                        // if two args given, have note first. 
                        string arguments = $"{args[1]}";
                        Process.Start(Path.Combine(notiDirectory, "editor.sh"), arguments);
                    }
                }
                else if (arg == "-wd" || arg == "-wl" || arg == "-wx" || arg == "-wt")
                {
                    if (args.Length == 3)
                    {
                        // if three args given, have language second.
                        // noti -wl rs if
                        string arguments = $"{arg} {args[2]} {args[1]}";
                        Process.Start(Path.Combine(notiDirectory, "writer.sh"), arguments);
                    }
                    else
                    {
                        // if two args given, have note second. 
                        string arguments = $"{arg} {args[1]}";
                        Process.Start(Path.Combine(notiDirectory, "writer.sh"), arguments);
                    }
                }
                else if (args[0] == "-l")
                {
                    var languages = Directory.GetDirectories(Path.Combine(notesDir, "languages"))
                                              .Select(Path.GetFileName);
                    Console.WriteLine($"Currently, your Noti supports:\n{string.Join('\n', languages)}");
                }
                else if (args[0] == "-t")
                {
                    var tools = Directory.GetDirectories(Path.Combine(notesDir, "tools"))
                                          .Select(Path.GetFileName);
                    Console.WriteLine($"Currently, your Noti supports:\n{string.Join('\n', tools)}");
                }
                else if (args[0] == "-x")
                {
                    var numLinuxNotes = Directory.GetFiles(Path.Combine(notesDir, "linux")).Length;
                    Console.WriteLine($"Currently, your Noti has {numLinuxNotes} notes on Linux!");
                }
               //  
               //  else if (args[0] == "noti")
               //  {
               //      if (args.Length == 2)
               //      {
               //          // if two args are given, have language first.
               //          Process.Start(Path.Combine(notiDir, "reader.sh"), $"{args[1]} {args[0]}");
               //      }
               //      else
               //      {
               //          // if one arg, have note first.
               //          Process.Start(Path.Combine(notiDir, "reader.sh"), $"{args[0]}");
               //      }
               //  }

                else
                {
                    Console.WriteLine($"Something went wrong!");
                }
            // static
            }
        // class
        }
    // namespace
    }

