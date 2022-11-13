<%@ WebService language="JScript" class="validateNames" %>

import System;
import System.Web.Services;
import System.Xml.Serialization;

public class validateNames extends WebService{
  WebMethodAttribute public function authorCheck(name:String) : String {
    
    // create variable to store original value passed 
    var orig = new String();
    
    // covert value to lowercase for comparisons
    orig = name.toLowerCase();
    
    // check to see if the name passed is one of the authors
    if((orig =="r. allen wyke") || (orig == "jason d. gilliam")){
      return(name + " is a JavaScript Unleashed author! ");
    
    // if not, then tell the user that
    }else{
      return(name + " is not a registered author.");
    }
  }
}