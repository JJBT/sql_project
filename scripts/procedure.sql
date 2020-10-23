DELIMITER //
USE project //

-- Проверить целостность TeamInventory
create procedure test1 ()
BEGIN
    select count(*) from Team_Inventory as t1 inner join Team_Inventory t2 on t1.idInventory = t2.idInventory where t1.idTeam <> t2.idTeam and (t1.start_time < coalesce(t2.end_time, curdate()) and t2.start_time < coalesce(t1.end_time, curdate())) into @c;
    if @c = 0 then
        select 'No conflicts' as message;
    else
        select distinct t1.idTeam, t1.idInventory from TeamInventory as t1 inner join TeamInventory t2 on t1.idInventory = t2.idInventory where t1.idTeam <> t2.idTeam and (t1.start_time < coalesce(t2.end_time, curdate()) and t2.start_time < coalesce(t1.end_time, curdate()));
        end if;
END //

-- Рецедив травмы
create procedure test2 ()
BEGIN

END //

-- Частота травм
create procedure test3 ()
BEGIN
    create view test_view as select idPlayer, count(*) as disease_count from Disease group by idPlayer order by disease_count DESC;
    select * from Player inner join test_view on Player.id = test_view.idPlayer order by disease_count desc;

    drop view if exists test_view;
END //

-- Какого игрока какой врач лечил чаще всего
create procedure test4 ()
BEGIN

END //

-- Какая команда самая успевающая
create procedure test5 ()
BEGIN

END //

-- Все кого лечил травматолог
create procedure test6 ()
BEGIN

END //

-- Отсортированная таблица молодых игроков (transfer cost)
create procedure test7 ()
BEGIN

END //

-- Самый возрастной игрок
create procedure test8 ()
BEGIN
    select * from Player where age = (select max(age) from Player );
END //

-- Средний возраст по командам
create procedure test9 ()
BEGIN
    select idTeam, avg(age) as 'average age' from Player group by idTeam;
END //

-- Топ самых долгих травм
create procedure test10 ()
BEGIN
    select id, idPlayer, idDoctor, settlement, discharge, DATEDIFF(coalesce(discharge, curdate()), settlement) as days from Disease order by days desc;
END //

-- Кто из врачей самый востребованный
create procedure test11 ()
BEGIN

END //

DELIMITER ;