INSERT INTO tests (title, description, institution, subject, date)
VALUES ('Math Test 1', 'Algebra basics test', 'Institution A', 'Math', '2024-01-05 10:30:00'),
       ('Math Test 2', 'Geometry test', 'Institution B', 'Math', '2024-01-12 09:00:00'),
       ('Science Test 1', 'Basic physics concepts', 'Institution C', 'Science', '2024-01-15 14:00:00'),
       ('History Test 1', 'Medieval history', 'Institution D', 'History', '2024-02-01 08:30:00'),
       ('English Test 1', 'Grammar and composition', 'Institution E', 'English', '2024-02-05 11:15:00'),
       ('Biology Test 1', 'Cell structure', 'Institution F', 'Biology', '2024-02-12 12:45:00'),
       ('Chemistry Test 1', 'Periodic table review', 'Institution G', 'Chemistry', '2024-02-20 15:30:00'),
       ('Math Test 3', 'Calculus introduction', 'Institution H', 'Math', '2024-03-01 10:00:00'),
       ('Physics Test 1', 'Newtonian mechanics', 'Institution I', 'Physics', '2024-03-08 09:30:00'),
       ('Geography Test 1', 'World geography basics', 'Institution J', 'Geography', '2024-03-15 13:00:00'),
       ('Computer Science Test 1', 'Intro to programming', 'Institution K', 'Computer Science', '2024-03-20 14:30:00'),
       ('Math Test 4', 'Probability and statistics', 'Institution L', 'Math', '2024-03-25 10:15:00'),
       ('Economics Test 1', 'Supply and demand', 'Institution M', 'Economics', '2024-04-01 09:45:00'),
       ('History Test 2', 'Renaissance period', 'Institution N', 'History', '2024-04-08 11:00:00'),
       ('Science Test 2', 'Chemistry in everyday life', 'Institution O', 'Science', '2024-04-15 13:45:00'),
       ('English Test 2', 'Literary analysis', 'Institution P', 'English', '2024-04-20 15:00:00'),
       ('Math Test 5', 'Trigonometry basics', 'Institution Q', 'Math', '2024-04-25 08:30:00'),
       ('Physics Test 2', 'Electricity and magnetism', 'Institution R', 'Physics', '2024-05-01 10:45:00'),
       ('Biology Test 2', 'Genetics and inheritance', 'Institution S', 'Biology', '2024-05-05 12:00:00'),
       ('Geography Test 2', 'Climate and weather', 'Institution T', 'Geography', '2024-05-10 14:15:00'),
       ('Chemistry Test 2', 'Chemical bonding', 'Institution U', 'Chemistry', '2024-05-15 16:30:00'),
       ('Economics Test 2', 'Market structures', 'Institution V', 'Economics', '2024-05-20 11:00:00'),
       ('Math Test 6', 'Linear algebra', 'Institution W', 'Math', '2024-05-25 09:30:00'),
       ('History Test 3', 'World Wars', 'Institution X', 'History', '2024-06-01 10:15:00'),
       ('Science Test 3', 'Astronomy basics', 'Institution Y', 'Science', '2024-06-05 13:00:00'),
       ('English Test 3', 'Creative writing', 'Institution Z', 'English', '2024-06-10 15:30:00'),
       ('Biology Test 3', 'Human anatomy', 'Institution AA', 'Biology', '2024-06-15 12:45:00'),
       ('Computer Science Test 2', 'Data structures', 'Institution BB', 'Computer Science', '2024-06-20 14:00:00'),
       ('Geography Test 3', 'Urban planning', 'Institution CC', 'Geography', '2024-06-25 08:45:00'),
       ('Math Test 7', 'Discrete mathematics', 'Institution DD', 'Math', '2024-07-01 09:00:00'),
       ('Chemistry Test 3', 'Organic chemistry basics', 'Institution EE', 'Chemistry', '2024-07-05 11:15:00'),
       ('Physics Test 3', 'Thermodynamics', 'Institution FF', 'Physics', '2024-07-10 13:30:00'),
       ('History Test 4', 'Cold War era', 'Institution GG', 'History', '2024-07-15 14:45:00'),
       ('Economics Test 3', 'International trade', 'Institution HH', 'Economics', '2024-07-20 16:00:00'),
       ('Science Test 4', 'Environmental science', 'Institution II', 'Science', '2024-07-25 10:30:00'),
       ('Math Test 8', 'Number theory', 'Institution JJ', 'Math', '2024-08-01 09:45:00'),
       ('English Test 4', 'Drama and theater', 'Institution KK', 'English', '2024-08-05 11:00:00'),
       ('Biology Test 4', 'Ecosystems and biodiversity', 'Institution LL', 'Biology', '2024-08-10 12:15:00'),
       ('Geography Test 4', 'Natural disasters', 'Institution MM', 'Geography', '2024-08-15 13:45:00'),
       ('Computer Science Test 3', 'Algorithms', 'Institution NN', 'Computer Science', '2024-08-20 15:30:00'),
       ('Chemistry Test 4', 'Analytical chemistry', 'Institution OO', 'Chemistry', '2024-08-25 16:45:00'),
       ('Physics Test 4', 'Quantum mechanics', 'Institution PP', 'Physics', '2024-09-01 09:15:00'),
       ('History Test 5', 'Ancient civilizations', 'Institution QQ', 'History', '2024-09-05 10:30:00'),
       ('Economics Test 4', 'Monetary policy', 'Institution RR', 'Economics', '2024-09-10 11:45:00'),
       ('Science Test 5', 'Earth science', 'Institution SS', 'Science', '2024-09-15 13:00:00'),
       ('Math Test 9', 'Advanced calculus', 'Institution TT', 'Math', '2024-09-20 14:30:00'),
       ('English Test 5', 'Poetry analysis', 'Institution UU', 'English', '2024-09-25 15:45:00'),
       ('Biology Test 5', 'Microbiology', 'Institution VV', 'Biology', '2024-10-01 16:00:00'),
       ('Geography Test 5', 'Cultural geography', 'Institution WW', 'Geography', '2024-10-05 08:30:00'),
       ('Computer Science Test 4', 'Software engineering', 'Institution XX', 'Computer Science', '2024-10-10 09:45:00');

INSERT INTO questions (test_id, text)
VALUES (1, 'What is the capital of France?'),
       (1, 'Solve the equation: 2x + 3 = 7.'),
       (1, 'Explain the process of photosynthesis.'),
       (2, 'Describe the main causes of World War I.'),
       (2, 'What is the derivative of x^2?'),
       (2, 'Name the three branches of the United States government.'),
       (3, 'What is the boiling point of water in Celsius?'),
       (3, 'Identify the primary colors of light.'),
       (3, 'What are Newton’s three laws of motion?'),
       (4, 'Write the chemical formula for water.'),
       (4, 'What is the value of pi up to two decimal places?'),
       (4, 'Who wrote the play "Romeo and Juliet"?'),
       (5, 'Define the term biodiversity.'),
       (5, 'What is the Pythagorean theorem?'),
       (5, 'Explain the significance of the Treaty of Versailles.'),
       (6, 'What is the atomic number of oxygen?'),
       (6, 'List the planets in our solar system.'),
       (6, 'Who was the first President of the United States?'),
       (7, 'What is the square root of 64?'),
       (7, 'Name the longest river in the world.'),
       (7, 'Describe the process of photosynthesis.'),
       (8, 'What is the formula for calculating the area of a circle?'),
       (8, 'Who discovered penicillin?'),
       (8, 'Define the law of supply and demand.'),
       (9, 'What is the main function of the heart?'),
       (9, 'Explain the theory of evolution.'),
       (9, 'What is the Great Wall of China?'),
       (10, 'Solve for y: 3y - 4 = 11.'),
       (10, 'What is the importance of the ozone layer?'),
       (10, 'Describe the water cycle.'),
       (11, 'What is the speed of light in a vacuum?'),
       (11, 'Who was the author of "Pride and Prejudice"?'),
       (11, 'What is the function of the mitochondria in a cell?'),
       (12, 'What is 15% of 200?'),
       (12, 'Name the continents of the world.'),
       (12, 'Explain the principle of conservation of energy.'),
       (13, 'What is a haiku?'),
       (13, 'Define the term "gravity".'),
       (13, 'What are the main types of clouds?'),
       (14, 'What is the smallest prime number?'),
       (14, 'Who painted the "Mona Lisa"?'),
       (14, 'Describe the structure of DNA.'),
       (15, 'What is the capital of Japan?'),
       (15, 'Explain the concept of plate tectonics.'),
       (15, 'What is the formula for force in physics?'),
       (16, 'Name the elements in the noble gas group.'),
       (16, 'What does DNA stand for?'),
       (16, 'Who was the first person to walk on the moon?'),
       (17, 'What is the freezing point of water?'),
       (17, 'Define the term "ecosystem".'),
       (17, 'What is an adjective?'),
       (18, 'Who developed the theory of relativity?'),
       (18, 'What is the main source of energy for the Earth?'),
       (18, 'Explain the function of the respiratory system.');

INSERT INTO answers (question_id, correct, text)
VALUES
-- Respostas para a pergunta 1
(1, 1, 'Paris'),                                            -- Correct
(1, 0, 'London'),
(1, 0, 'Rome'),
(1, 0, 'Berlin'),
(1, 0, 'Madrid'),
-- Respostas para a pergunta 2
(2, 1, 'x = 2'),                                            -- Correct
(2, 0, 'x = 1'),
(2, 0, 'x = 3'),
(2, 0, 'x = -1'),
(2, 0, 'x = 0'),
-- Respostas para a pergunta 3
(3, 1, 'Process by which plants make food using sunlight'), -- Correct
(3, 0, 'Process of water boiling'),
(3, 0, 'Process of rocks forming'),
(3, 0, 'Process of animals hunting'),
(3, 0, 'Process of metals rusting'),
-- Respostas para a pergunta 4
(4, 1, 'Militarism, Alliances, Imperialism, Nationalism'),  -- Correct
(4, 0, 'Economic boom, Industrial revolution'),
(4, 0, 'Discovery of electricity'),
(4, 0, 'Space race, Cold War'),
(4, 0, 'Invention of the internet'),
-- Respostas para a pergunta 5
(5, 1, '2x'),                                               -- Correct
(5, 0, 'x^2'),
(5, 0, 'x + 2'),
(5, 0, '3x'),
(5, 0, 'x/2'),
-- Respostas para a pergunta 6
(6, 1, 'Executive, Legislative, Judicial'),                 -- Correct
(6, 0, 'Military, Civil, Political'),
(6, 0, 'Federal, Regional, Local'),
(6, 0, 'King, Queen, Parliament'),
(6, 0, 'Mayor, Governor, President'),
-- Respostas para a pergunta 7
(7, 1, '100°C'),                                            -- Correct
(7, 0, '0°C'),
(7, 0, '50°C'),
(7, 0, '150°C'),
(7, 0, '200°C'),
-- Respostas para a pergunta 8
(8, 1, 'Red, Green, Blue'),                                 -- Correct
(8, 0, 'Red, Yellow, Blue'),
(8, 0, 'Green, Orange, Purple'),
(8, 0, 'Yellow, White, Black'),
(8, 0, 'Cyan, Magenta, White'),
-- Respostas para a pergunta 9
(9, 1, 'Law of inertia, F=ma, Action-reaction'),            -- Correct
(9, 0, 'Law of relativity, Quantum entanglement'),
(9, 0, 'Law of gravity, Light refraction'),
(9, 0, 'Law of thermodynamics, Heat transfer'),
(9, 0, 'Law of pressure, Archimedes’ principle'),
-- Respostas para a pergunta 10
(10, 1, 'H2O'),                                             -- Correct
(10, 0, 'CO2'),
(10, 0, 'O2'),
(10, 0, 'NaCl'),
(10, 0, 'CH4'),
-- Continue este padrão até a pergunta 50
-- ...
(50, 1, 'Software engineering principles'),                 -- Correct
(50, 0, 'Cooking recipes'),
(50, 0, 'Medieval art techniques'),
(50, 0, 'Traditional folk songs'),
(50, 0, 'Dance choreography');


INSERT INTO users_answers (user_id, question_id, answer_id)
VALUES
-- Resposta para a pergunta 1
(1, 1, 1),
-- Resposta para a pergunta 2
(1, 2, 6),
-- Resposta para a pergunta 3
(1, 3, 11),
-- Resposta para a pergunta 4
(1, 4, 16),
-- Resposta para a pergunta 5
(1, 5, 21),
-- Resposta para a pergunta 6
(1, 6, 26),
-- Resposta para a pergunta 7
(1, 7, 31),
-- Resposta para a pergunta 8
(1, 8, 36),
-- Resposta para a pergunta 9
(1, 9, 41),
-- Resposta para a pergunta 10
(1, 10, 46),
-- Resposta para a pergunta 11
(1, 11, 51),
-- Resposta para a pergunta 12
(1, 12, 56),
-- Resposta para a pergunta 13
(1, 13, 61),
-- Resposta para a pergunta 14
(1, 14, 66),
-- Resposta para a pergunta 15
(1, 15, 71),
-- Resposta para a pergunta 16
(1, 16, 76),
-- Resposta para a pergunta 17
(1, 17, 81),
-- Resposta para a pergunta 18
(1, 18, 86);
