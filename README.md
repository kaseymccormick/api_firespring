##Firespring API exercise

Task: Please write a Ruby program that takes the following information and uses Firespring's Order Details API to print out the "priceTotal" value.

###Resources:###
**given:**  
- https://newspringboard.firespring.com/docs/api/apis/orders/orderDetails#sample_requests _leads to an error page_



**found:**
- https://my.firespring.com/docs/api/


**Notes**

it's seems like just figuring out how to format the curl request into a request Ruby can handle. The problem right now is not being able to send authentication information correctly.

considering using a gem - [curb] (https://github.com/taf2/curb)

found stack overflow curl to ruby using authentication http://stackoverflow.com/questions/29247140/http-requests-with-username-and-password-in-ruby

maybe a resource
http://makandracards.com/makandra/1145-how-to-send-http-requests-using-curl