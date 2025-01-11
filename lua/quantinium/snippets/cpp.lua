local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local r = require("luasnip.extras").rep

return {
	s("cp", {
		t({
			"#include <bits/stdc++.h>",
			"#include <cstdint>",
			"#include <vector>",
			"#include <algorithm>",
			"#define ll int64_t",
			"",
			"using namespace std;",
			"",
			"int main() {",
			"\treturn 0;",
			"}"
		})
	}),
}
