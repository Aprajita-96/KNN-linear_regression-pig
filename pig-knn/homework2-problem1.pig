rows = LOAD 'score.csv' USING PigStorage(',') AS (seat:int, midterm:double, att:double, hw:double, quiz:double, final:int, total:double);
records = FILTER rows by seat is not null;
all_records = GROUP records all;
h = FOREACH all_records GENERATE AVG(records.midterm), AVG(records.att),AVG(records.hw), AVG(records.quiz), AVG(records.final), AVG(records.total);
records2 = FOREACH records GENERATE seat, (midterm is null ? h.$0 : midterm) AS midterm, (att is null ? h.$1 : att) AS att, (hw is null ? h.$2 : hw) AS hw,(quiz is null ? h.$3 : quiz) AS quiz, (final is null ? h.$4 : final) AS final, (total is null ? h.$5 : total) as total;
target = filter records2 by seat == 54 AND midterm == 110;
records3 = FOREACH records2 GENERATE *, SQRT((hw-target.hw)*(hw-target.hw)+(quiz-target.quiz)*(quiz-target.quiz)+(final-target.final)*(final-target.final));
sorted = ORDER records3 by $7;
N_neighbors = limit sorted 5;
DUMP N_neighbors;

