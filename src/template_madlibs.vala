namespace TemplateMadlibs {
    public void make_madlibs(string template_string) {
        var response_map = new Gee.HashMap<string, string>();
        
        int start_idx = 0;

        while (true) {
            int idx = template_string.index_of("{", start_idx);
            if (idx == -1) break;
            start_idx = idx;
            string id, desc;
            parse_template_param(template_string, ref start_idx, out id, out desc);

            if (!response_map.has_key(id)) {
                var res = prompt_user(desc);
                response_map[id] = res;
            }
        }

        print(format(template_string, response_map));
        print("\n");
    }

    private void parse_template_param(string template_string, ref int from, out string id, out string desc) {
        int i = template_string.index_of("}", from);
        assert(i != -1);

        var param = template_string[from+1:i];
        
        from = i+1;

        if (!param.contains(":")) {
            //  id = prompt = param;
            id = param;
            desc = param;
            return;
        }

        var split = param.split(":");    
        id = split[0];
        desc = split[1];
    }

    private string? prompt_user(string desc) {
        print(@"Tell me $desc: ");
        return stdin.read_line()?.strip();
    }

    private string format(string template_string, Gee.HashMap<string, string> params) {
        var result = "";
        int start_idx = 0;
        
        while (true) {
            int idx = template_string.index_of("{", start_idx);
            if (idx == -1) break;
            result += template_string[start_idx:idx];
            start_idx = idx;

            string id, kind;
            parse_template_param(template_string, ref start_idx, out id, out kind);
            assert(params.has_key(id));
            result += params[id];
        }
        result += template_string[start_idx:-1];
        
        return result;
    }
}
