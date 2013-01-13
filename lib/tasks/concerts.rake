task :scrape => :environment do 
  source = Net::HTTP.get('www.theindependentsf.com', '/')
  doc = Nokogiri::HTML(source)
  headliners = doc.css("h1.headliners a")
  dates = doc.css("h2.dates")
  time = doc.css(".start.dtstart")
  temp = doc.css(".ticket-price")
  temp2 = doc.css(".tickets")
  puts temp2.first.attributes["href"]
  tickets = []
  temp.each_with_index do |t, i|
    if t.css(".sold-out").text != ""
      tickets << t.css(".sold-out")
    else
      tickets << t.css(".price-range")
      if temp2[i]
        tickets << temp2[i].attributes["href"]
      end
    end
  end
  together = compile(headliners,dates,time, tickets)
  puts together.each{|d| puts d.text}
end

def compile(headliners,dates,time,tickets)
  together = []
  headliners.each_with_index do |h, i|
    together.push(h)
    together.push(dates[i])
    together.push(time[i])
    together.push(tickets[i])
  end
  together
end
