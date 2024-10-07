   module Jekyll
     module RussianDateFilter
       MONTHS = {
         "January" => "январь",
         "February" => "февраль",
         "March" => "март",
         "April" => "апрель",
         "May" => "май",
         "June" => "июнь",
         "July" => "июль",
         "August" => "август",
         "September" => "сентябрь",
         "October" => "октябрь",
         "November" => "ноябрь",
         "December" => "декабрь"
       }

       def russian_date(input)
         # Parse the input as a Date object
         date = Date.parse(input.to_s)

         # Extract the day, month, and year from the date
         day = date.strftime("%-d")
         month = date.strftime("%B")
         year = date.strftime("%Y")

         # Map the English month to the Russian equivalent
         russian_month = MONTHS[month]

         # Return the date in the desired format
         "#{day} #{russian_month} #{year}"
       end
     end
   end

   Liquid::Template.register_filter(Jekyll::RussianDateFilter)
   
