# Message from Jio SIM of Sansiddh Jain
curl -i -X POST \
    https://graph.facebook.com/v15.0/106774852347288/messages  \
    -H 'Authorization: Bearer EAAMaTdD0bd4BAJ3iFQyUnQZCFetAjnkXwM4tHMXbZBsQfMZBrblz1f8ZCANPUvPvuwpuM5XuiwOZBJDHoc0S5IbkZCmMMsskhwslD38E61T45vRbIKnvhDNDIIcfrS5qlxCvxZAOoQ78KYshLJGGZADOoNs3iLGQJysQZCLCv1vgVauvUEwmZC1jYrJ2QcnAn71jKgGqiVQDSEqdREcuJcZBgeX' \
    -H 'Content-Type: application/json' \
    -d '{ 
            "messaging_product": "whatsapp", 
            "to": "917042072573",
            "type": "template",
            "template": {
                "name": "stroke_template",
                "language": { "code": "en" },
                "components": [{
                    "type": "body",
                    "parameters": [
                        {
                            "type": "text",
                            "text": "26/F"
                        },
                        {
                            "type": "text",
                            "text": "Rao Nursing Home, Pune"
                        },
                        {
                            "type": "text",
                            "text": "3:00PM"
                        },
                        {
                            "type": "text",
                            "text": "4:42PM"
                        },
                        {
                            "type": "text",
                            "text": "http://bit.ly/3YS0smh"
                        },
                    ]
                }]
            }
        }'