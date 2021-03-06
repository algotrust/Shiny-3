library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Currency Converter"),
  sidebarPanel(
    h5("Converter for 56 currencies."),
    selectInput("From","Currency I Have",c('Argentine Peso'='Argentine Peso',
                                           'Australian Dollar'='Australian Dollar',
                                           'Bahraini Dinar'='Bahraini Dinar',
                                           'Botswana Pula'='Botswana Pula',
                                           'Brazilian Real'='Brazilian Real',
                                           'British Pound'='British Pound',
                                           'Bruneian Dollar'='Bruneian Dollar',
                                           'Bulgarian Lev'='Bulgarian Lev',
                                           'Canadian Dollar'='Canadian Dollar',
                                           'Chilean Peso'='Chilean Peso',
                                           'Chinese Yuan Renminbi'='Chinese Yuan Renminbi',
                                           'Colombian Peso'='Colombian Peso',
                                           'Croatian Kuna'='Croatian Kuna',
                                           'Czech Koruna'='Czech Koruna',
                                           'Danish Krone'='Danish Krone',
                                           'Emirati Dirham'='Emirati Dirham',
                                           'Euro'='Euro',
                                           'Hong Kong Dollar'='Hong Kong Dollar',
                                           'Hungarian Forint'='Hungarian Forint',
                                           'Icelandic Krona'='Icelandic Krona',
                                           'Indian Rupee'='Indian Rupee',
                                           'Indonesian Rupiah'='Indonesian Rupiah',
                                           'Iranian Rial'='Iranian Rial',
                                           'Israeli Shekel'='Israeli Shekel',
                                           'Japanese Yen'='Japanese Yen',
                                           'Kazakhstani Tenge'='Kazakhstani Tenge',
                                           'Kuwaiti Dinar'='Kuwaiti Dinar',
                                           'Latvian Lat'='Latvian Lat',
                                           'Libyan Dinar'='Libyan Dinar',
                                           'Lithuanian Litas'='Lithuanian Litas',
                                           'Malaysian Ringgit'='Malaysian Ringgit',
                                           'Mauritian Rupee'='Mauritian Rupee',
                                           'Mexican Peso'='Mexican Peso',
                                           'Nepalese Rupee'='Nepalese Rupee',
                                           'New Zealand Dollar'='New Zealand Dollar',
                                           'Norwegian Krone'='Norwegian Krone',
                                           'Omani Rial'='Omani Rial',
                                           'Pakistani Rupee'='Pakistani Rupee',
                                           'Philippine Peso'='Philippine Peso',
                                           'Polish Zloty'='Polish Zloty',
                                           'Qatari Riyal'='Qatari Riyal',
                                           'Romanian New Leu'='Romanian New Leu',
                                           'Russian Ruble'='Russian Ruble',
                                           'Saudi Arabian Riyal'='Saudi Arabian Riyal',
                                           'Singapore Dollar'='Singapore Dollar',
                                           'South African Rand'='South African Rand',
                                           'South Korean Won'='South Korean Won',
                                           'Sri Lankan Rupee'='Sri Lankan Rupee',
                                           'Swedish Krona'='Swedish Krona',
                                           'Swiss Franc'='Swiss Franc',
                                           'Taiwan New Dollar'='Taiwan New Dollar',
                                           'Thai Baht'='Thai Baht',
                                           'Trinidadian Dollar'='Trinidadian Dollar',
                                           'Turkish Lira'='Turkish Lira',
                                           'Venezuelan Bolivar'='Venezuelan Bolivar',
                                           'US Dollar'='US Dollar'
    ),selected='US Dollar'
),
    numericInput('Amount',"Currency Amount",1,min=0),
selectInput("To","Currency I Need",c('Argentine Peso'='Argentine Peso',
                                     'Australian Dollar'='Australian Dollar',
                                     'Bahraini Dinar'='Bahraini Dinar',
                                     'Botswana Pula'='Botswana Pula',
                                     'Brazilian Real'='Brazilian Real',
                                     'British Pound'='British Pound',
                                     'Bruneian Dollar'='Bruneian Dollar',
                                     'Bulgarian Lev'='Bulgarian Lev',
                                     'Canadian Dollar'='Canadian Dollar',
                                     'Chilean Peso'='Chilean Peso',
                                     'Chinese Yuan Renminbi'='Chinese Yuan Renminbi',
                                     'Colombian Peso'='Colombian Peso',
                                     'Croatian Kuna'='Croatian Kuna',
                                     'Czech Koruna'='Czech Koruna',
                                     'Danish Krone'='Danish Krone',
                                     'Emirati Dirham'='Emirati Dirham',
                                     'Euro'='Euro',
                                     'Hong Kong Dollar'='Hong Kong Dollar',
                                     'Hungarian Forint'='Hungarian Forint',
                                     'Icelandic Krona'='Icelandic Krona',
                                     'Indian Rupee'='Indian Rupee',
                                     'Indonesian Rupiah'='Indonesian Rupiah',
                                     'Iranian Rial'='Iranian Rial',
                                     'Israeli Shekel'='Israeli Shekel',
                                     'Japanese Yen'='Japanese Yen',
                                     'Kazakhstani Tenge'='Kazakhstani Tenge',
                                     'Kuwaiti Dinar'='Kuwaiti Dinar',
                                     'Latvian Lat'='Latvian Lat',
                                     'Libyan Dinar'='Libyan Dinar',
                                     'Lithuanian Litas'='Lithuanian Litas',
                                     'Malaysian Ringgit'='Malaysian Ringgit',
                                     'Mauritian Rupee'='Mauritian Rupee',
                                     'Mexican Peso'='Mexican Peso',
                                     'Nepalese Rupee'='Nepalese Rupee',
                                     'New Zealand Dollar'='New Zealand Dollar',
                                     'Norwegian Krone'='Norwegian Krone',
                                     'Omani Rial'='Omani Rial',
                                     'Pakistani Rupee'='Pakistani Rupee',
                                     'Philippine Peso'='Philippine Peso',
                                     'Polish Zloty'='Polish Zloty',
                                     'Qatari Riyal'='Qatari Riyal',
                                     'Romanian New Leu'='Romanian New Leu',
                                     'Russian Ruble'='Russian Ruble',
                                     'Saudi Arabian Riyal'='Saudi Arabian Riyal',
                                     'Singapore Dollar'='Singapore Dollar',
                                     'South African Rand'='South African Rand',
                                     'South Korean Won'='South Korean Won',
                                     'Sri Lankan Rupee'='Sri Lankan Rupee',
                                     'Swedish Krona'='Swedish Krona',
                                     'Swiss Franc'='Swiss Franc',
                                     'Taiwan New Dollar'='Taiwan New Dollar',
                                     'Thai Baht'='Thai Baht',
                                     'Trinidadian Dollar'='Trinidadian Dollar',
                                     'Turkish Lira'='Turkish Lira',
                                     'Venezuelan Bolivar'='Venezuelan Bolivar',
                                     'US Dollar'='US Dollar'
),selected='US Dollar'
),
    submitButton('Submit')
    
    ),
  mainPanel(
   h3("Currency Exchange Result"),
   h4("You Entered"),
   verbatimTextOutput('fromamount'),
   verbatimTextOutput('fromcurrency'),   
   h4("Equals to"),  
   verbatimTextOutput('toamount'),
   verbatimTextOutput('tocurrency')
   )
  )
)