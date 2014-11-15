library(shiny)
exchangetable<-read.csv('currency_V2.csv')
exchangevalue<-function(from,to,amount){
  fromvalue<-exchangetable[exchangetable$Currency==from,'Rate']
  tovalue<-exchangetable[exchangetable$Currency==to,'Rate']
  return(amount*tovalue/fromvalue)
}

shinyServer(
  function(input, output) {
  output$fromcurrency<-renderPrint({input$From})
  output$tocurrency<-renderPrint({input$To})
  output$fromamount<-renderPrint({input$Amount})
  output$toamount<-renderPrint({exchangevalue(
    input$From,
    input$To,
    input$Amount
    )})  
  }
)