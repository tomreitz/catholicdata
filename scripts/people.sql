SELECT json_object(
	'id', id,
	'rank', rank,
	'title', title,
	'status', status,
	'name', name,
	'display_name', display_name,
	'deceased', CASE WHEN deceased=0 THEN null ELSE 1 END,
	'assignments', (
		SELECT json_group_array( json_object(
			'title', title,
			'modifier', modifier,
			'date_appointed', date_appointed,
			'date_installed', date_installed,
			'date_left', date_left,
			'jurisdiction', jurisdiction
		) ) FROM people_assignments WHERE people_assignments.person=people.id
	),
	'contact', json_object(
		'website', contact_website,
		'email', contact_email
	),
	'wikipedia', wikipedia,
	'social', json_object(
		'facebook', social_facebook,
		'twitter', social_twitter,
		'instagram', social_instagram,
		'youtube', social_youtube
	),
	'events', (
		SELECT json_group_array( json_object(
			'person', person,
			'organization', organization,
			'place', place,
			'region', region,
			'date', date,
			'type', type,
			'description', description,
			'source', source
		) ) FROM events WHERE events.person=people.id
	)
) AS json FROM people
