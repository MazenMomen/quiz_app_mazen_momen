import 'package:flutter/material.dart';

List quizData = [
  {
    "categoryName": "Sport test",
    "color": Colors.red,
    "data": [
      {
        "Question": "Who is the best player in the world?",
        "Answers": [
          {"Ans": "Messi", "Score": 0},
          {"Ans": "Salah", "Score": 0},
          {"Ans": "Cristiano", "Score": 0},
          {"Ans": "Benzema", "Score": 1}
        ]
      },
      {
        "Question": "Who are the world cup holders?",
        "Answers": [
          {"Ans": "Egypt", "Score": 0},
          {"Ans": "Spain", "Score": 0},
          {"Ans": "France", "Score": 0},
          {"Ans": "Argentina", "Score": 1}
        ]
      },
      {
        "Question": "Who are the most UEFA Champions League holders?",
        "Answers": [
          {"Ans": "Ismaily", "Score": 0},
          {"Ans": "Bayern", "Score": 0},
          {"Ans": "Salah", "Score": 0},
          {"Ans": "Real Madrid", "Score": 1}
        ]
      }
    ]
  },
  {
    "categoryName": "History Test",
    "color": Colors.blue,
    "data": [
      {
        "Question": "Who was the first President of the United States?",
        "Answers": [
          {"Ans": "John Adams", "Score": 0},
          {"Ans": "Benjamin Franklin", "Score": 0},
          {"Ans": "George Washington", "Score": 1},
          {"Ans": "Thomas Jefferson", "Score": 0}
        ]
      },
      {
        "Question": "Which war is often called the 'Great War'?",
        "Answers": [
          {"Ans": "World War II", "Score": 0},
          {"Ans": "American Civil War", "Score": 0},
          {"Ans": "World War I", "Score": 1},
          {"Ans": "Vietnam War", "Score": 0}
        ]
      },
      {
        "Question": "Who wrote the 'Communist Manifesto'?",
        "Answers": [
          {"Ans": "Karl Marx", "Score": 1},
          {"Ans": "Vladimir Lenin", "Score": 0},
          {"Ans": "Joseph Stalin", "Score": 0},
          {"Ans": "Mao Zedong", "Score": 0}
        ]
      },
      {
        "Question":
            "In which year did Christopher Columbus first arrive in the Americas?",
        "Answers": [
          {"Ans": "1492", "Score": 1},
          {"Ans": "1620", "Score": 0},
          {"Ans": "1776", "Score": 0},
          {"Ans": "1812", "Score": 0}
        ]
      },
      {
        "Question":
            "Who was the first woman to fly solo across the Atlantic Ocean?",
        "Answers": [
          {"Ans": "Amelia Earhart", "Score": 1},
          {"Ans": "Bessie Coleman", "Score": 0},
          {"Ans": "Harriet Quimby", "Score": 0},
          {"Ans": "Jacqueline Cochran", "Score": 0}
        ]
      },
      {
        "Question": "Which country is known as the Land of the Rising Sun?",
        "Answers": [
          {"Ans": "China", "Score": 0},
          {"Ans": "South Korea", "Score": 0},
          {"Ans": "Japan", "Score": 1},
          {"Ans": "Vietnam", "Score": 0}
        ]
      },
      {
        "Question": "Who was the 16th President of the United States?",
        "Answers": [
          {"Ans": "John F. Kennedy", "Score": 0},
          {"Ans": "Abraham Lincoln", "Score": 1},
          {"Ans": "Andrew Johnson", "Score": 0},
          {"Ans": "Theodore Roosevelt", "Score": 0}
        ]
      },
      {
        "Question": "What ancient wonder of the world was located in Egypt?",
        "Answers": [
          {"Ans": "Great Wall of China", "Score": 0},
          {"Ans": "Hanging Gardens of Babylon", "Score": 0},
          {"Ans": "Statue of Zeus at Olympia", "Score": 0},
          {"Ans": "Pyramids of Giza", "Score": 1}
        ]
      },
      {
        "Question": "Who was the first person to set foot on the moon?",
        "Answers": [
          {"Ans": "Neil Armstrong", "Score": 1},
          {"Ans": "Buzz Aldrin", "Score": 0},
          {"Ans": "John Glenn", "Score": 0},
          {"Ans": "Yuri Gagarin", "Score": 0}
        ]
      },
      {
        "Question": "Which famous speech began with 'I have a dream'?",
        "Answers": [
          {"Ans": "Gettysburg Address", "Score": 0},
          {"Ans": "Emancipation Proclamation", "Score": 0},
          {"Ans": "Pearl Harbor Address", "Score": 0},
          {
            "Ans": "Martin Luther King Jr.'s 'I Have a Dream' speech",
            "Score": 1
          }
        ]
      },
      {
        "Question": "Who was the first woman to win a Nobel Prize?",
        "Answers": [
          {"Ans": "Marie Curie", "Score": 1},
          {"Ans": "Rosa Parks", "Score": 0},
          {"Ans": "Mother Teresa", "Score": 0},
          {"Ans": "Florence Nightingale", "Score": 0}
        ]
      },
      {
        "Question":
            "Which ancient civilization is known for building the Great Wall of China?",
        "Answers": [
          {"Ans": "Roman Empire", "Score": 0},
          {"Ans": "Greek Empire", "Score": 0},
          {"Ans": "Mongol Empire", "Score": 0},
          {"Ans": "Chinese Empire", "Score": 1}
        ]
      },
      {
        "Question": "Who opened Egypt?",
        "Answers": [
          {
            "Ans": "Amro Ibn Al-Aas",
            "Score": 1,
          },
          {
            "Ans": "Abo Bakr Al-Seddiq",
            "Score": 0,
          },
          {
            "Ans": "CC",
            "Score": 0,
          },
          {
            "Ans": "Moh Aly (Not the boxer)",
            "Score": 0,
          },
        ]
      },
      {
        "Question": "When was 25 January revolution?",
        "Answers": [
          {
            "Ans": "2010",
            "Score": 0,
          },
          {
            "Ans": "2011",
            "Score": 1,
          },
          {
            "Ans": "2012",
            "Score": 0,
          },
          {
            "Ans": "1919",
            "Score": 0,
          },
        ]
      },
      {
        "Question": "What is the reason for the fall of the Uthmany Empire?",
        "Answers": [
          {
            "Ans": "Weakness of the rulers",
            "Score": 0,
          },
          {
            "Ans": "Spreading of corruption",
            "Score": 0,
          },
          {
            "Ans": "All of the above",
            "Score": 1,
          },
          {
            "Ans": "None of the above",
            "Score": 0,
          },
        ]
      },
    ]
  },
  {
    "categoryName": "General Knowledge",
    "color": const Color.fromARGB(255, 61, 212, 184),
    "data": [
      {
        "Question": "Which gas do plants absorb from the atmosphere?",
        "Answers": [
          {"Ans": "Carbon dioxide", "Score": 1},
          {"Ans": "Oxygen", "Score": 0},
          {"Ans": "Nitrogen", "Score": 0},
          {"Ans": "Methane", "Score": 0}
        ]
      },
      {
        "Question": "What is the largest planet in our solar system?",
        "Answers": [
          {"Ans": "Earth", "Score": 0},
          {"Ans": "Mars", "Score": 0},
          {"Ans": "Jupiter", "Score": 1},
          {"Ans": "Saturn", "Score": 0}
        ]
      },
      {
        "Question":
            "Which famous scientist is known for his theory of relativity?",
        "Answers": [
          {"Ans": "Isaac Newton", "Score": 0},
          {"Ans": "Charles Darwin", "Score": 0},
          {"Ans": "Albert Einstein", "Score": 1},
          {"Ans": "Galileo Galilei", "Score": 0}
        ]
      },
      {
        "Question": "What is the capital of France?",
        "Answers": [
          {"Ans": "Berlin", "Score": 0},
          {"Ans": "Madrid", "Score": 0},
          {"Ans": "Rome", "Score": 0},
          {"Ans": "Paris", "Score": 1}
        ]
      },
      {
        "Question": "Who wrote the play 'Romeo and Juliet'?",
        "Answers": [
          {"Ans": "Charles Dickens", "Score": 0},
          {"Ans": "Jane Austen", "Score": 0},
          {"Ans": "William Shakespeare", "Score": 1},
          {"Ans": "Mark Twain", "Score": 0}
        ]
      },
      {
        "Question": "What is the chemical symbol for gold?",
        "Answers": [
          {"Ans": "Go", "Score": 0},
          {"Ans": "Au", "Score": 1},
          {"Ans": "Ag", "Score": 0},
          {"Ans": "Ge", "Score": 0}
        ]
      },
      {
        "Question": "What is the largest mammal in the world?",
        "Answers": [
          {"Ans": "African Elephant", "Score": 0},
          {"Ans": "Giraffe", "Score": 0},
          {"Ans": "Blue Whale", "Score": 1},
          {"Ans": "Hippopotamus", "Score": 0}
        ]
      },
      {
        "Question": "Who is the president?",
        "Answers": [
          {
            "Ans": "Date",
            "Score": 0,
          },
          {
            "Ans": "Meksiky",
            "Score": 0,
          },
          {
            "Ans": "CC",
            "Score": 0,
          },
          {
            "Ans": "Benzema",
            "Score": 1,
          },
        ]
      },
      {
        "Question": "Which country is the mother of the whole world?",
        "Answers": [
          {
            "Ans": "Egypt",
            "Score": 1,
          },
          {
            "Ans": "Spain",
            "Score": 0,
          },
          {
            "Ans": "France",
            "Score": 0,
          },
          {
            "Ans": "Argentina",
            "Score": 0,
          },
        ]
      },
      {
        "Question": "What is the largest planet in our solar system?",
        "Answers": [
          {"Ans": "Earth", "Score": 0},
          {"Ans": "Mars", "Score": 0},
          {"Ans": "Jupiter", "Score": 1},
          {"Ans": "Saturn", "Score": 0}
        ]
      }
    ]
  },
  {
    "categoryName": "IQ Test",
    "color": Colors.cyan,
    "data": [
      {
        "Question":
            "If 5 cats can catch 5 mice in 5 minutes, how many cats would it take to catch 100 mice in 100 minutes?",
        "Answers": [
          {"Ans": "1 cat", "Score": 1},
          {"Ans": "5 cats", "Score": 0},
          {"Ans": "10 cats", "Score": 0},
          {"Ans": "20 cats", "Score": 0}
        ]
      },
      {
        "Question": "How many sides does a hexagon have?",
        "Answers": [
          {"Ans": "4 sides", "Score": 0},
          {"Ans": "5 sides", "Score": 0},
          {"Ans": "6 sides", "Score": 1},
          {"Ans": "7 sides", "Score": 0}
        ]
      },
      {
        "Question": "Which number comes next in the series: 2, 4, 6, 8, ...?",
        "Answers": [
          {"Ans": "10", "Score": 1},
          {"Ans": "12", "Score": 0},
          {"Ans": "16", "Score": 0},
          {"Ans": "18", "Score": 0}
        ]
      },
      {
        "Question": "What is the result of 9 - 3 x 2?",
        "Answers": [
          {"Ans": "12", "Score": 0},
          {"Ans": "15", "Score": 1},
          {"Ans": "18", "Score": 0},
          {"Ans": "6", "Score": 0}
        ]
      },
      {
        "Question": "How many continents are there on Earth?",
        "Answers": [
          {"Ans": "5", "Score": 0},
          {"Ans": "6", "Score": 0},
          {"Ans": "4", "Score": 0},
          {"Ans": "7", "Score": 1}
        ]
      },
      {
        "Question": "What is the square root of 64?",
        "Answers": [
          {"Ans": "4", "Score": 0},
          {"Ans": "6", "Score": 0},
          {"Ans": "8", "Score": 1},
          {"Ans": "10", "Score": 0}
        ]
      },
      {
        "Question": "Which planet is known as the 'Red Planet'?",
        "Answers": [
          {"Ans": "Mars", "Score": 1},
          {"Ans": "Venus", "Score": 0},
          {"Ans": "Jupiter", "Score": 0},
          {"Ans": "Saturn", "Score": 0}
        ]
      },
      {
        "Question": "How many degrees are in a right angle?",
        "Answers": [
          {"Ans": "45 degrees", "Score": 0},
          {"Ans": "90 degrees", "Score": 1},
          {"Ans": "180 degrees", "Score": 0},
          {"Ans": "360 degrees", "Score": 0}
        ]
      }
    ]
  },
  {
    "categoryName": "Math Test",
    "color": Colors.orange,
    "data": [
      {
        "Question": "What is 2 + 2?",
        "Answers": [
          {"Ans": "3", "Score": 0},
          {"Ans": "4", "Score": 1},
          {"Ans": "5", "Score": 0},
          {"Ans": "6", "Score": 0}
        ]
      },
      {
        "Question":
            "If you have 3 apples and you eat 2, how many apples do you have left?",
        "Answers": [
          {"Ans": "0", "Score": 1},
          {"Ans": "1", "Score": 0},
          {"Ans": "2", "Score": 0},
          {"Ans": "3", "Score": 0}
        ]
      },
      {
        "Question": "What is 5 multiplied by 3?",
        "Answers": [
          {"Ans": "8", "Score": 0},
          {"Ans": "10", "Score": 0},
          {"Ans": "15", "Score": 1},
          {"Ans": "20", "Score": 0}
        ]
      },
      {
        "Question":
            "If a box contains 12 chocolates, and you take 3 out, how many chocolates are left in the box?",
        "Answers": [
          {"Ans": "6", "Score": 0},
          {"Ans": "7", "Score": 0},
          {"Ans": "8", "Score": 0},
          {"Ans": "9", "Score": 1}
        ]
      },
      {
        "Question": "What is the result of 10 divided by 2?",
        "Answers": [
          {"Ans": "3", "Score": 0},
          {"Ans": "4", "Score": 0},
          {"Ans": "5", "Score": 0},
          {"Ans": "5", "Score": 1}
        ]
      }
    ]
  },
  {
    "categoryName": "Computer Science",
    "color": Colors.green,
    "data": [
      {
        "Question": "What does CPU stand for?",
        "Answers": [
          {"Ans": "Central Processing Unit", "Score": 1},
          {"Ans": "Computer Personal Unit", "Score": 0},
          {"Ans": "Central Process Unit", "Score": 0},
          {"Ans": "Computer Processor Unit", "Score": 0}
        ]
      },
      {
        "Question":
            "Which programming language is known as the 'mother of all languages'?",
        "Answers": [
          {"Ans": "Python", "Score": 0},
          {"Ans": "Java", "Score": 0},
          {"Ans": "C++", "Score": 0},
          {"Ans": "C", "Score": 1}
        ]
      },
      {
        "Question": "What is the full form of HTML?",
        "Answers": [
          {"Ans": "Hyper Text Makeup Language", "Score": 0},
          {"Ans": "Hyper Transfer Markup Language", "Score": 0},
          {"Ans": "Hyper Text Markup Language", "Score": 1},
          {"Ans": "Hyperlink Text Markup Language", "Score": 0}
        ]
      },
      {
        "Question":
            "Which company developed the JavaScript programming language?",
        "Answers": [
          {"Ans": "Microsoft", "Score": 0},
          {"Ans": "Apple", "Score": 0},
          {"Ans": "Google", "Score": 0},
          {"Ans": "Netscape", "Score": 1}
        ]
      },
      {
        "Question": "What does SQL stand for?",
        "Answers": [
          {"Ans": "Structured Query Language", "Score": 1},
          {"Ans": "Sequential Query Language", "Score": 0},
          {"Ans": "Simple Query Language", "Score": 0},
          {"Ans": "Standard Query Language", "Score": 0}
        ]
      },
      {
        "Question":
            "Which data structure uses the Last-In-First-Out (LIFO) principle?",
        "Answers": [
          {"Ans": "Queue", "Score": 0},
          {"Ans": "Stack", "Score": 1},
          {"Ans": "Array", "Score": 0},
          {"Ans": "Linked List", "Score": 0}
        ]
      },
      {
        "Question": "What does CSS stand for?",
        "Answers": [
          {"Ans": "Cascading Style Sheet", "Score": 1},
          {"Ans": "Computer Style Sheet", "Score": 0},
          {"Ans": "Creative Style Sheet", "Score": 0},
          {"Ans": "Colorful Style Sheet", "Score": 0}
        ]
      },
      {
        "Question":
            "Which protocol is used for secure communication over a computer network?",
        "Answers": [
          {"Ans": "HTTP", "Score": 0},
          {"Ans": "FTP", "Score": 0},
          {"Ans": "SMTP", "Score": 0},
          {"Ans": "HTTPS", "Score": 1}
        ]
      },
      {
        "Question":
            "Which programming language is often used for artificial intelligence and machine learning?",
        "Answers": [
          {"Ans": "Java", "Score": 0},
          {"Ans": "Python", "Score": 1},
          {"Ans": "C++", "Score": 0},
          {"Ans": "Ruby", "Score": 0}
        ]
      },
      {
        "Question": "What is the purpose of a firewall in computer security?",
        "Answers": [
          {"Ans": "Filter spam emails", "Score": 0},
          {"Ans": "Protect against viruses", "Score": 0},
          {"Ans": "Block unauthorized access", "Score": 1},
          {"Ans": "Speed up internet connection", "Score": 0}
        ]
      },
      {
        "Question":
            "Which programming language is often used for web development and is known for its simplicity?",
        "Answers": [
          {"Ans": "Java", "Score": 0},
          {"Ans": "C#", "Score": 0},
          {"Ans": "JavaScript", "Score": 0},
          {"Ans": "HTML", "Score": 1}
        ]
      },
      {
        "Question": "What is the primary function of an operating system?",
        "Answers": [
          {"Ans": "Run applications", "Score": 0},
          {"Ans": "Manage hardware resources", "Score": 1},
          {"Ans": "Create documents", "Score": 0},
          {"Ans": "Connect to the internet", "Score": 0}
        ]
      },
      {
        "Question": "Which algorithm is used for sorting data efficiently?",
        "Answers": [
          {"Ans": "Bubble Sort", "Score": 0},
          {"Ans": "Quick Sort", "Score": 1},
          {"Ans": "Insertion Sort", "Score": 0},
          {"Ans": "Selection Sort", "Score": 0}
        ]
      },
      {
        "Question": "What is the purpose of the 'if' statement in programming?",
        "Answers": [
          {"Ans": "Define a function", "Score": 0},
          {"Ans": "Loop through data", "Score": 0},
          {"Ans": "Make decisions based on conditions", "Score": 1},
          {"Ans": "Print text on the screen", "Score": 0}
        ]
      },
      {
        "Question":
            "Which data structure allows you to store elements with unique values only?",
        "Answers": [
          {"Ans": "Array", "Score": 0},
          {"Ans": "Set", "Score": 1},
          {"Ans": "List", "Score": 0},
          {"Ans": "Dictionary", "Score": 0}
        ]
      },
      {
        "Question":
            "What is the primary function of a router in a computer network?",
        "Answers": [
          {"Ans": "Filter spam emails", "Score": 0},
          {"Ans": "Block hackers", "Score": 0},
          {"Ans": "Connect devices in a network", "Score": 1},
          {"Ans": "Run web applications", "Score": 0}
        ]
      },
      {
        "Question":
            "What does IDE stand for in the context of software development?",
        "Answers": [
          {"Ans": "Integrated Development Environment", "Score": 1},
          {"Ans": "Internet Development Engine", "Score": 0},
          {"Ans": "Interactive Design Environment", "Score": 0},
          {"Ans": "Intelligent Data Encryption", "Score": 0}
        ]
      },
      {
        "Question":
            "Which data structure represents a hierarchical structure and is often used to organize files in a computer?",
        "Answers": [
          {"Ans": "Stack", "Score": 0},
          {"Ans": "Queue", "Score": 0},
          {"Ans": "Tree", "Score": 1},
          {"Ans": "Graph", "Score": 0}
        ]
      },
      {
        "Question":
            "What is the primary function of an HTTP server in web development?",
        "Answers": [
          {"Ans": "Store database records", "Score": 0},
          {"Ans": "Manage user authentication", "Score": 0},
          {"Ans": "Serve web pages to clients", "Score": 1},
          {"Ans": "Encrypt data transmissions", "Score": 0}
        ]
      }
    ]
  }
];

TextEditingController userNameController = TextEditingController();
