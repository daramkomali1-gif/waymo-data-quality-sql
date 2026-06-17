-- Create table

CREATE TABLE annotations (
    annotation_id INT,
    reviewer_name VARCHAR(50),
    label VARCHAR(50),
    confidence DECIMAL(3,2)
);

-- Insert sample data

INSERT INTO annotations VALUES
(1,'John','Car',0.95),
(2,'Mary','Pedestrian',0.87),
(3,'John','Traffic Light',0.65),
(4,'Mary','Car',0.99),
(5,'Alex','Pedestrian',0.55);

-- Find low confidence annotations

SELECT *
FROM annotations
WHERE confidence < 0.80;

-- Average confidence per reviewer

SELECT reviewer_name,
AVG(confidence) AS avg_confidence
FROM annotations
GROUP BY reviewer_name;

-- Count annotations per reviewer

SELECT reviewer_name,
COUNT(*) AS total_annotations
FROM annotations
GROUP BY reviewer_name;
