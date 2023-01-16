insert into tb_user (name, email, password) values ('Alex Brown', 'alexbrown@gmail.com','$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG' );
insert into tb_user (name, email, password) values ('Maria Green', 'mariag@gmail.com','$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
insert into tb_user (name, email, password) values ('Bob Sponja', 'bobsquarepants@gmail.com','$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 3);

insert into tb_course (name, img_Uri, img_Gray_Uri) values ('Basic English', 'https://img.freepik.com/premium-photo/word-basic-consists-wooden-cubes-with-letters-top-view-light-background-work-space_284815-2974.jpg?w=2000', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvjRlN1ilQ_SopV_RI0oppoj0dKXJDVSiosg&usqp=CAU');

insert into tb_offer (edition, start_Moment, end_Moment, course_id) values ('1,0',TIMESTAMP WITH TIME ZONE '2022-07-01T03:00:00',TIMESTAMP WITH TIME ZONE '2023-07-01T03:00:00',1);
insert into tb_offer (edition, start_Moment, end_Moment, course_id) values ('2,0',TIMESTAMP WITH TIME ZONE '2023-07-01T03:00:00',TIMESTAMP WITH TIME ZONE '2024-07-01T03:00:00',1);

insert into tb_resource (title, description, position, img_Uri, type, offer_id) values ('Trilha HTML', 'Trilha princial do curso', 1, 'https://img.freepik.com/premium-photo/word-basic-consists-wooden-cubes-with-letters-top-view-light-background-work-space_284815-2974.jpg', 1, 1);
insert into tb_resource (title, description, position, img_Uri, type, offer_id) values ('Forum', 'Tire suas dúvidas', 2, 'https://img.freepik.com/premium-photo/word-basic-consists-wooden-cubes-with-letters-top-view-light-background-work-space_284815-2974.jpg', 2, 1);
insert into tb_resource (title, description, position, img_Uri, type, offer_id) values ('Lives', 'Lives exclusivas para a turma', 3, 'https://img.freepik.com/premium-photo/word-basic-consists-wooden-cubes-with-letters-top-view-light-background-work-space_284815-2974.jpg', 0, 1);

insert into tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) values ('Capítulo 1', 'Neste capítulo vamos começar com conceitos básicos', 1, '', 1, null);
insert into tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) values ('Capítulo 2', 'Neste capítulo vamos continuar', 2, '', 1, 1);
insert into tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) values ('Capítulo 3', 'Neste capítulo vamos finalizar', 3, '', 1, 2);

insert into tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) values (1,1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);
insert into tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) values (2,1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);

insert into tb_lesson (title, position, section_id) values('Aula 1 do Cap 1', 1, 1);
insert into tb_content (id, text_Content, video_Uri) values (1, 'Material de apoio do capítulo.','https://www.youtube.com/watch?v=vNS-54QlcEg');

insert into tb_lesson (title, position, section_id) values('Aula 2 do Cap 1', 2, 1);
insert into tb_content (id, text_Content, video_Uri) values (2, 'Material de apoio do capítulo.','https://www.youtube.com/watch?v=vNS-54QlcEg');

insert into tb_lesson (title, position, section_id) values('Aula 3 do Cap 1', 3, 1);
insert into tb_content (id, text_Content, video_Uri) values (3, 'Material de apoio do capítulo.','https://www.youtube.com/watch?v=vNS-54QlcEg');

insert into tb_lesson (title, position, section_id) values('Tarefa do Capítulo 1', 1, 1);
insert into tb_task (id, description, question_Count, approval_Count, weight, due_Date) values (4,'Fazer trabalho legal', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-25T00:00:00Z');

insert into tb_lessons_done (lesson_id, user_id, offer_id) values (1,1,1);
insert into tb_lessons_done (lesson_id, user_id, offer_id) values (2,1,1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);

