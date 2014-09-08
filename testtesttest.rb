def log stuff
    date = stuff[:date]
    text = stuff[:text]
   puts "#{date} #{text}"
end

def log2 stuff

    puts "%{date} %{text}" % stuff
end


data = {date: "2014-09-02", text: "blablaba"}
log data

log2 data

puts formatbla = "%{n1}\n%{n2}\n%{n3}" % {n1: 'meow', n2: 'woof', n3: 'bla'}


