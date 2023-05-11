from pyorthanc import Orthanc
from datetime import datetime
import os

access_token = 'e941789d13709465436a62a00b406aed2a1ba406'

def get_human_readable_date(study_info):
    study_date = study_info['MainDicomTags']['StudyDate']
    study_time = study_info['MainDicomTags']['StudyTime']

    sdate = datetime.strptime(study_date, '%Y%m%d')
    stime = datetime.strptime(study_time, '%H%M%S')

    sdate = sdate.replace(hour=stime.hour, minute=stime.minute, second=stime.second)
    return sdate.strftime("%H:%M, %b %d, %Y")


def send_whatsapp_message(study_info):
    study_uid = study_info['MainDicomTags']['StudyInstanceUID']
    url = f'http://150.136.229.110:3000/viewer/{study_uid}' #5
    
    when_performed = get_human_readable_date(study_info) #4

    pname = study_info['PatientMainDicomTags']['PatientName']
    psex = study_info['PatientMainDicomTags']['PatientSex']
    pdetails = f'{pname}, {psex}' # 1
    insti_name = study_info['MainDicomTags']['InstitutionName'] # 2

    print(f'Study with UID {study_uid} added.')

    os.system(f'./curl-whatsapp.sh {pdetails} {insti_name} {"3:00PM"} {when_performed} {url}')

def main():
    orthanc = Orthanc('http://localhost:8042', username='sansiddh', 
                      password='sansiddh')

    new_studies = orthanc.get_studies()

    with open('studies.txt', 'r') as f:
        old_studies = [line.strip() for line in f]

    studies_diff = [x for x in new_studies if x not in old_studies]

    study_info = orthanc.get_studies_id(new_studies[0])
    send_whatsapp_message(study_info)
    # if len(studies_diff) == 0:
    #     print('No new studies added')

    # else:
    #     for study in studies_diff:
    #         study_info = orthanc.get_studies_id(study)
    #         send_whatsapp_message(study_info)
