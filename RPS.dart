import 'dart:io';
import 'dart:math';
void main()
{
    print("Welcome to Rock,Paper,Scissor game\n Type 'exit' to quit the game");
    final random=Random();
    Map<String,String>rules=
    {
        "rock":"scissor",
        "scissor":"paper",
        "paper":"rock"

    };
    int user=0;
    int comp=0;
    List<String> options=["rock","paper","scissor"];
    while(true)
    {
        String compChoice=options[random.nextInt(options.length)];
        print("Please choose rock,paper,scissor");
         String? userChoice=stdin.readLineSync()?.toLowerCase();

        if(userChoice=="exit")
        {
            print("You:$user,Computer:$comp\n Bye baby.....!");
            break;
        }
        else if(!options.contains(userChoice))
        {
            print("Invalid choice");
            continue;
        }
        else if(compChoice==userChoice)
        {
            print("Game was tie");
        }
        else if(rules[compChoice]==userChoice)
        {
            comp+=1;
            print("Computer was winner\nYOu :$user,Computer :$comp");
            


        }
       else if(compChoice==rules[userChoice])
        {
            user+=1;
            print("You are winner baby...\nYou :$user,Computer :$comp");
            
        }
    }
}