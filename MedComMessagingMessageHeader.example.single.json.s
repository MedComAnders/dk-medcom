{
    "meta": {
        "profile": [
            "http://medcom.dk/fhir/StructureDefinition/medcom-messaging-messageHeader"
        ]
    },
    "source": {
        "endpoint": "http://example.org/clients/ehr-lite"
    },
    "sender": {
        "reference": "http://example.org/clients/ehr-lite2"
    },
    "destination": [
        {
            "endpoint": "llp:10.11.12.14:5432",
            "receiver": {
                "reference": "http://acme.com/ehr/fhir/Practitioner/2323-33-4"
            },
            "extension": [
                {
                    "url": "http://medcom.dk/fhir/StructureDefinition/medcom-messaging-destinationUseExtension",
                    "valueCoding": {
                        "system": "urn:medcom:destinationuse",
                        "code": "primary"
                    }
                }
            ]
        },
        {
            "endpoint": "llp:10.11.12.14:5432",
            "receiver": {
                "reference": "http://acme.com/ehr/fhir/Practitioner/2323-33-4"
            },
            "extension": [
                {
                    "url": "http://medcom.dk/fhir/StructureDefinition/medcom-messaging-destinationUseExtension",
                    "valueCoding": {
                        "system": "urn:medcom:destinationuse",
                        "code": "cc"
                    }
                }
            ]
        }
    ],
    "responsible": {
        "reference": "http://acme.com/ehr/fhir/Practitioner/2323-33-4"
    },
    "focus": [
        {
            "reference": "http://acme.com/ehr/fhir/Patient/pat1"
        },
        {
            "reference": "http://acme.com/ehr/fhir/Patient/pat12"
        }
    ],
    "eventCoding": {
        "system": "http://example.org/fhir/message-events",
        "code": "patient-link"
    },
    "resourceType": "MessageHeader"
}