
DEBATE=debate-2016-10-09.json
SAMPLE=sample-2016-10-09.json


%.csv : %.json
	jq --raw-output '[.id, .user.screen_name, .created_at, .text] | @csv' < $< > $@
