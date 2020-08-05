#!/bin/bash

python scripts/people-json.py > people.json
python scripts/regions-json.py > regions.json

echo "# Statistics" > statistics.md
echo "" >> statistics.md
python scripts/statistics.py >> statistics.md
