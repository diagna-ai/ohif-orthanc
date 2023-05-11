# Message from Jio SIM of Sansiddh Jain

# $1 = Patient Name, Age, Sex - 26/F
# $2 = Institution Name - Rao Nursing Home, Pune
# $3 = Stroke Onset Time - 3:00PM
# $4 = Time of scanning - 4:42PM
# $5 = Viewing URL - http://bit.ly/3YS0smh

curl -i -X POST \
    https://graph.facebook.com/v15.0/106774852347288/messages  \
    -H 'Authorization: Bearer EAAMaTdD0bd4BAPWVVZBsxEleZBwAtTMfT78Cyms2DWuSohRhMlLke9GOHEZC7BiGOS0EXm7uda6pbIsChzlK7FlThA2DZBqWTJilftsVO070CyPBqRB8uN4bE5gghKa6bzjSo9PErPadHCZAua8ZCmnmkoMVVgiEPK9cketY9hw3KVB9wF0JbKRFvyYqXMV0WAajS7ZBdjkiOZBbxAxPmCQ0' \
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
                            "text": "$1"
                        },
                        {
                            "type": "text",
                            "text": "$2"
                        },
                        {
                            "type": "text",
                            "text": "$3"
                        },
                        {
                            "type": "text",
                            "text": "$4"
                        },
                        {
                            "type": "text",
                            "text": "$5"
                        },
                    ]
                }]
            }
        }'