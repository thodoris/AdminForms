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
                    SECOND: "δευτερόλεπτο",
                    MINUTE: "λεπτό",
                    HOUR: "ώρα",
                    DAY: "ημέρα",
                    MONTH: "μήνας",
                    YEAR: "έτος"
                },
                "notOptional": "Υποχρεωτικό πεδίο",
                "disallowValue": "{0} μη αποδεκτές τιμές.",
                "invalidValueOfEnum": "Αυτό το πεδίο έχει μία από τις ακόλουθες τιμές {0}. [{1}]",
                "notEnoughItems": "Ο ελάχιστος αριθμός των στοιχείων είναι {0}",
                "tooManyItems": "Ο μέγιστος αριθμός των στοιχείων είναι {0}",
                "valueNotUnique": "Υπάρχουν διπλές τιμές",
                "notAnArray": "Το περιεχόμενο δεν είναι μια λίστα",
                "invalidDate": "Μη έγκυρη ημερομηνία {0}",
                "invalidEmail": "Μη έγκυρη διεύθυνση ηλεκτρονικού ταχυδρομείου, π.χ.: info@cloudcms.com",
                "stringNotAnInteger": "Η τιμή δεν είναι ακέραια.",
                "invalidIPv4": "Μη έγκυρη διεύθυνση IPv4, ex: 192.168.0.1",
                "stringValueTooSmall": "Η ελάχιστη τιμή για αυτό το πεδίο είναι {0}",
                "stringValueTooLarge": "Η μέγιστη τιμή για αυτό το πεδίο είναι {0}",
                "stringValueTooSmallExclusive": "Η τιμή αυτού του πεδίου πρέπει να είναι μεγαλύτερη από {0}",
                "stringValueTooLargeExclusive": "Η τιμή αυτού του πεδίου πρέπει να είναι μικρότερη από {0}",
                "stringDivisibleBy": "Η τιμή πρέπει να διαιρείται με το {0}",
                "stringNotANumber": "Η τιμή δεν είναι αριθμός.",
                "invalidPassword": "Λανθασμένος κωδικός πρόσβασης",
                "invalidPhone": "Μη έγκυρος αριθμός τηλεφώνου, π.χ.: (123) 456-9999",
                "invalidPattern": "Αυτό το πεδίο εξαρτάται από τη μορφή {0}",
                "stringTooShort": "Αυτό το πεδίο πρέπει να περιέχει τουλάχιστον {0} χαρακτήρες",
                "stringTooLong": "Αυτό το πεδίο πρέπει να έχει το πολύ {0} χαρακτήρες"
            }

        }

    });

})(jQuery);

function translate_Field_Titles(title) {
    var titleEN = ["Single-Line Text", "Multi-Line Text", "Checkbox Field", "File Field", "hidden", "number", "object", "radio", "select", "text", "textarea"];
    var titleGR = ["Γραμμή κειμένου", "Ελεύθερο Κείμενο", "Πλαίσιο ελέγχου", "Αρχείο", "κρυφό πεδίο", "αριθμός", "αντικείμενο", "radio", "επιλογη", "κείμενο", "Ελεύθερο κείμενο"];

    
    for (var i = 0; i < titleEN.length; i++) {
        if (titleEN[i].toUpperCase() == title.toUpperCase()) {
            return titleGR[i];
        }
    }

    return title;;
};