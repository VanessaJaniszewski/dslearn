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