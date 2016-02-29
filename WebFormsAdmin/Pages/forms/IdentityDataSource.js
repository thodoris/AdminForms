var Identity_SchemaProperty = {
    FName: { type: "string", required: false },
    LName: { type: "string", required: false },
    DateBirth: { type: "string", required: false },
    IdentityNumber: { type: "string", required: false },
    TaxNumber: { type: "string", required: false }
};

var Identity_OptionsField = {
    FName: { id: "FName", name: "FName", type: "text", label: "Όνομα", readonly: true },
    LName: { id: "LName", name: "LName", type: "text", label: "Επίθετο", readonly: true },
    DateBirth: { id: "DateBirth", name: "DateBirth", type: "text", label: "Ημ.Γέννησης", readonly: true },
    IdentityNumber: { id: "IdentityNumber", name: "IdentityNumber", type: "text", label: "ΑΔΤ", readonly: true },
    TaxNumber: { id: "TaxNumber", name: "TaxNumber", type: "text", label: "ΑΦΜ", readonly: true }
};

var Identity_Data = {
    FName: "Θεόδωρος",
    LName: "Παπαδόπουλος",
    DateBirth: "09/07/1977",
    IdentityNumber: "ΑΚ123456",
    TaxNumber:"069012345"
};
