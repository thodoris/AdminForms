$.alpaca.setDefaultLocale("el_GR");

(function ($) {
    var Alpaca = $.alpaca;
    Alpaca.registerView({
        "id": "base",
        "messages": {
            "el_GR": {
                required: "Υποχρεωτικό πεδίο",
                invalid: "Μη έγκυρη τιμή",
                months: ["Gennaio", "Febbraio", "Marzo", "Aprile", "Maggio", "Giugno", "Luglio", "Agosto", "Settembre", "Ottobre", "Novembre", "Dicembre"],
                timeUnits: {
                    SECOND: "secondi",
                    MINUTE: "minuti",
                    HOUR: "ore",
                    DAY: "giorni",
                    MONTH: "mesi",
                    YEAR: "anni"
                },
                "notOptional": "Υποχρεωτικό πεδίο",
                "disallowValue": "{0} sono valori non accettati.",
                "invalidValueOfEnum": "Questo campo accetta uno dei seguenti valori {0}. [{1}]",
                "notEnoughItems": "Il numero minimo di elementi e' {0}",
                "tooManyItems": "Il numero massimo di elementi e' {0}",
                "valueNotUnique": "Sono presenti valori duplicati",
                "notAnArray": "Il contenuto non e' una lista",
                "invalidDate": "Μη έγκυρη ημερομηνία {0}",
                "invalidEmail": "Indirizzo e-mail non valido, es: info@cloudcms.com",
                "stringNotAnInteger": "Il valore non e' un intero.",
                "invalidIPv4": "Indirizzo IPv4 non valido, ex: 192.168.0.1",
                "stringValueTooSmall": "Il valore minimo per questo campo e' {0}",
                "stringValueTooLarge": "Il valore massimo per questo campo e' {0}",
                "stringValueTooSmallExclusive": "Il valore di questo campo deve essere maggiore di {0}",
                "stringValueTooLargeExclusive": "Il valore di questo campo deve essere minore di {0}",
                "stringDivisibleBy": "Il valore deve essere divisibile per {0}",
                "stringNotANumber": "Il valore non e' un numero.",
                "invalidPassword": "Password errata",
                "invalidPhone": "Numero di telefono non valido, ex: (123) 456-9999",
                "invalidPattern": "Questo campo deve rispettare il formato {0}",
                "stringTooShort": "Questo campo deve contenere almeno {0} caratteri",
                "stringTooLong": "Questo campo deve contenere al massimo {0} caratteri"
            }

        }

    });

})(jQuery);

function translate_Field_Titles(title) {
    var titleEN = ["Single-Line Text", "Multi-Line Text", "Checkbox Field", "File Field", "hidden", "number", "object", "radio", "select", "text", "textarea"];
    var titleGR = ["Γραμμή κειμένου", "Κείμενο", "checkbox", "Αρχείο", "hidden", "number", "object", "radio", "select", "text", "textarea"];

    
    for (var i = 0; i < titleEN.length; i++) {
        if (titleEN[i].toUpperCase() == title.toUpperCase()) {
            return titleGR[i];
        }
    }

    return title;;
};