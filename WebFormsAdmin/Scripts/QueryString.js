function GetQueryStringParams(sParam)
{      
 
    var queryStringValue;    
    $.each(document.location.search.substr(1).split('&'), function(c,q){
        var i = q.split('=');
                
        if(i[0].toString() == sParam)
        {                  
            queryStringValue = i[1].toString();
        }
    });
          
    return queryStringValue;
}
