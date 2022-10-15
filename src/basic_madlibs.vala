namespace BasicMadlib {
    public void make_madlib() {
        var object        = prompt("Tell me a noun: ");
        var activity      = prompt("Tell me a verb: ");
        var name          = prompt("Tell me a name: ");
        var day           = prompt("Tell me a day: ");
        var new_activity  = prompt("Tell me a verb in 'ing' form: ");
        var day_adjective = prompt("Tell me an adjective: ");

        print(@"Once upon a time, there was a(n) $object named $name.\n");
        print(@"This $object really liked to $activity.\n");
        print(@"It was a boring $day, so $name decided that today it would be fun to try $new_activity.\n");
        print(@"$name was $new_activity all day, and the day was $day_adjective!\n");
    }

    private string? prompt(string prompt) {
        print(prompt);
        var input = stdin.read_line()?.strip();
        return input;
    }
}
