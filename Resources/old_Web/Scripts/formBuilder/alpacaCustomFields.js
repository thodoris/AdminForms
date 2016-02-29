(function ($) {

    var Alpaca = $.alpaca;

    Alpaca.Fields.AddressGRField = Alpaca.Fields.ObjectField.extend(
    /**
     * @lends Alpaca.Fields.AddressGRField.prototype
     */
    {
        /**
         * @see Alpaca.Fields.ObjectField#getFieldType
         */
        getFieldType: function () {
            return "addressgr";
        },

        /**
         * @private
         * @see Alpaca.Fields.ObjectField#setup
         */
        setup: function () {
            this.base();

            if (this.data === undefined) {
                this.data = {
                    street: ['', '']
                };
            }

            this.schema = {
                "title": "Διεύθυνση",
                "type": "object",
                "properties": {
                    "street": {
                        "title": "Οδός",
                        "type": "array",
                        "items": {
                            "type": "string",
                            "maxLength": 30,
                            "minItems": 0,
                            "maxItems": 3
                        }
                    },
                    "city": {
                        "title": "Πόλη",
                        "type": "string"
                    },
                    "state": {
                        "title": "Νομός",
                        "type": "string",
                        "enum": ["AL", "AK", "AS", "AZ", "AR", "CA", "CO", "CT", "DE", "DC", "FM", "FL", "GA", "GU", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MH", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "MP", "OH", "OK", "OR", "PW", "PA", "PR", "RI", "SC", "SD", "TN", "TX"]
                    },
                    "zip": {
                        "title": "Τ.Κ",
                        "type": "string",
                        "pattern": /^(\d{5}(-\d{4})?)?$/
                    }
                }
            };
            Alpaca.merge(this.options, {
                "fields": {
                    "zip": {
                        "maskString": "99999",
                        "size": 5
                    },
                    "state": {
                        "optionLabels": ["Αιτωλίας & Ακαρνανίας", "Αργολίδος", "Αρκαδίας", "Άρτης", "Αττικής ", "Αχαίας", "Βοιωτίας", "Γρεβενών", "Δράμας", "Δωδεκανήσου", "Έβρου ", "Ευβοίας", "Ευρυτανίας", "Ζακύνθου", "Ηλείας", "Ημαθίας", "Ηρακλείου", "Θεσπρωτίας", "Θεσσαλoνίκης", "Ιωαννίνων", "Καβάλας", "Καρδίτσης", "Καστοριάς", "Κερκύρας", "Κεφαλληνίας", "Κιλκίς ", "Κοζάνης", "Κορινθίας", "Κυκλάδων", "Λακωνίας", "Λαρίσης", "Λασιθίου", "Λέσβου", "Λευκάδος", "Μαγνησίας", "Μεσσηνίας", "Ξάνθης", "Πέλλης", "Πιερίας", "Πρεβέζης", "Ρεθύμνης", "Ροδόπης", "Σάμου", "Σερρών", "Τρικάλων", "Φθιώτιδος", "Φλωρίνης", "Φωκίδος", "Χαλκιδικής", "Χανίων", "Χίου"]
                    }
                }
            });

            if (Alpaca.isEmpty(this.options.addressValidation)) {
                this.options.addressValidation = true;
            }
        },

        /**
         * @see Alpaca.Field#isContainer
         */
        isContainer: function () {
            return false;
        },

        /**
         * Returns address in a single line string.
         *
         * @returns {String} Address as a single line string.
         */
        getAddressGR: function () {
            var value = this.getValue();
            if (this.view.type === "view") {
                value = this.data;
            }
            var address = "";
            if (value) {
                if (value.street) {
                    $.each(value.street, function (index, value) {
                        address += value + " ";
                    });
                }
                if (value.city) {
                    address += value.city + " ";
                }
                if (value.state) {
                    address += value.state + " ";
                }
                if (value.zip) {
                    address += value.zip;
                }
            }

            return address;
        },

        /**
         * @see Alpaca.Field#afterRenderContainer
         */
        afterRenderContainer: function (model, callback) {

            var self = this;

            this.base(model, function () {
                var container = self.getContainerEl();

                // apply additional css
                $(container).addClass("alpaca-AddressGRField");

                if (self.options.addressValidation && !self.isDisplayOnly()) {
                    $('<div style="clear:both;"></div>').appendTo(container);
                    var mapButton = $('<div class="alpaca-form-button">Δείξε στο Χάρτη</div>').appendTo(container);
                    if (mapButton.button) {
                        mapButton.button({
                            text: true
                        });
                    }
                    mapButton.click(function () {

                        if (google && google.maps) {
                            var geocoder = new google.maps.Geocoder();
                            var address = self.getAddressGR();
                            if (geocoder) {
                                geocoder.geocode({
                                    'address': address
                                }, function (results, status) {
                                    if (status === google.maps.GeocoderStatus.OK) {
                                        var mapCanvasId = self.getId() + "-map-canvas";
                                        if ($('#' + mapCanvasId).length === 0) {
                                            $("<div id='" + mapCanvasId + "' class='alpaca-field-address-mapcanvas'></div>").appendTo(self.getFieldEl());
                                        }

                                        var map = new google.maps.Map(document.getElementById(self.getId() + "-map-canvas"), {
                                            "zoom": 10,
                                            "center": results[0].geometry.location,
                                            "mapTypeId": google.maps.MapTypeId.ROADMAP
                                        });

                                        var marker = new google.maps.Marker({
                                            map: map,
                                            position: results[0].geometry.location
                                        });

                                    }
                                    else {
                                        self.displayMessage("Geocoding αποτυχία: " + status);
                                    }
                                });
                            }

                        }
                        else {
                            self.displayMessage("Google Map API is not installed.");
                        }
                    }).wrap('<small/>');

                    if (self.options.showMapOnLoad) {
                        mapButton.click();
                    }
                }

                callback();

            });
        },

        /**
         * @see Alpaca.Fields.ObjectField#getType
         */
        getType: function () {
            return "any";
        }


        /* builder_helpers */
        ,

        /**
         * @see Alpaca.Fields.ObjectField#getTitle
         */
        getTitle: function () {
            return "Διευθυνσή";
        },

        /**
         * @see Alpaca.Fields.ObjectField#getDescription
         */
        getDescription: function () {
            return "Ελληνική Διεύθυνσή με Οδό,Αριθμό,Πόλη,Νομό και Τ.Κ";
        },

        /**
         * @private
         * @see Alpaca.Fields.ObjectField#getSchemaOfOptions
         */
        getSchemaOfOptions: function () {
            return Alpaca.merge(this.base(), {
                "properties": {
                    "validateAddress": {
                        "title": "Επικύρωση Διευθυσνής",
                        "description": "Enable address validation if true",
                        "type": "boolean",
                        "default": true
                    },
                    "showMapOnLoad": {
                        "title": "Εμφάνιση Χάρτη",
                        "type": "boolean"
                    }
                }
            });
        },

        /**
         * @private
         * @see Alpaca.Fields.ObjectField#getOptionsForOptions
         */
        getOptionsForOptions: function () {
            return Alpaca.merge(this.base(), {
                "fields": {
                    "validateAddress": {
                        "helper": "Address validation if checked",
                        "rightLabel": "Enable Google Map for address validation?",
                        "type": "checkbox"
                    }
                }
            });
        }

        /* end_builder_helpers */
    });

    Alpaca.registerFieldClass("addressgr", Alpaca.Fields.AddressGRField);

})(jQuery);