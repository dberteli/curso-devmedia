/* melhora na identacao */
DEFINE INPUT PARAMETER p-state AS CHAR NO-UNDO.

FOR EACH customer WHERE
        customer.state = p-state:

    DISPLAY 
        Customer.Name 
        Customer.Cust-Num
        customer.state 
        Customer.City 
        Customer.Country     
        WITH SCROLLABLE.
END.
