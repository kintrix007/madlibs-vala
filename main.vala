const string madlibs_template = """
Once upon a time, there was a(n) {object:a noun} named {name:a name}.
This {object} really liked to {activity:a verb}.
It was a boring {day:a day}, so {name} decided that today it would be fun to try {new_activity:an ing verb}.
{name} was {new_activity} all day, and the day was {day_adjective:an adjective}!
""";

int main(string[] args) {
    //  BasicMadlib.make_madlib();
    TemplateMadlibs.make_madlibs(madlibs_template);
    
    return 0;
}
