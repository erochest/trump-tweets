
DEBATE=debate-2016-10-19.json
SAMPLE=sample-2016-10-19.json


%.csv : %.json
	jq --raw-output '[.id, .user.screen_name, .created_at, .text] | @csv' < $< > $@
