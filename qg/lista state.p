FOR EACH sports.state,
    EACH sports.Salesrep WHERE
         salesrep.region = state.region:   
    
    
    DISPLAY 
        state.state
        state.state-NAME
        salesrep.Rep-Name
        Salesrep.Sales-Rep
        .
END.
