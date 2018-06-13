DEFINE INPUT PARAMETER p-state AS CHAR NO-UNDO.

FOR EACH customer WHERE
        customer.state = p-state:

    DISPLAY 
        customer.state Customer.City Customer.Country Customer.Name Customer.Credit-Limit
        WITH SCROLLABLE.
END.
