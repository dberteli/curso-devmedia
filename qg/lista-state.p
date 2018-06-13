DEFINE VARIABLE c-state AS CHARACTER   NO-UNDO.

UPDATE c-state WITH SCROLLABLE 1 COL.

FOR EACH sports.state WHERE
         state.state = c-state,
    EACH sports.Salesrep WHERE
         salesrep.region = state.region
    BY state.state:
    
    DISPLAY 
        state.region
        state.state
        state.state-NAME
        salesrep.rep-name
        .
END.

RUN  's:\pendrive\desenv\github\analista-denis\producao\qg\lista-customer.p' (INPUT c-state).
  
