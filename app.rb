# could you pass arguments to a ruby command???
puts "Enter the name of your website:"
website_name = gets.chomp

puts "What color is " + website_name
bg_color = gets.chomp

puts "Create an HTML element"
custom_el = gets.chomp

puts "What text should go in that " + custom_el
custom_msg = gets.chomp

system("touch index.html")

jsFile = File.open('./index.js', 'w') { |js|
  js.write('alert("alert from javascript")')
}

file = File.open('./index.html', 'w') { |f|
  f.write(%(
    <body style="background-color: #{bg_color}">
      <h1>#{website_name}</h1>
      <script>
        let element = document.createElement('#{custom_el}')
        element.innerText = '#{custom_msg}'
        setTimeout(() => {
          document.body.append(element)
        }, 3000)
      </script>
      <script src="./index.js"></script>
    </body>
  ))
}

system("open index.html")