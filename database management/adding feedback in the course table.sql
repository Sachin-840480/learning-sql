-- Adding Feedback in the Course Table.

UPDATE course
SET feedback = array_append(
    feedback,
    ROW(
        '41b320b6-cf6f-4aaa-b88b-9b215d4a8256',
        5,
        'Great Course !'
    )::feedback
)
WHERE course_id = '17fc3642-6e1f-4632-abd9-c876feddd48d';