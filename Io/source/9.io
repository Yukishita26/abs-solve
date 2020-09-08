Regex
Sequence replace := method(p, q, 
  self matchesOfRegex(p asRegex) replaceAllWith(q)
)
if(File standardInput readLine replace("eraser", "!") replace("erase", "!") replace("dreamer", "!") replace("dream", "!") replace("!", "") == "", "YES", "NO") println