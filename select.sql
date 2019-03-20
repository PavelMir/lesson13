SELECT
p.*
FROM products p
LEFT JOIN product_descriptions pd 
ON p.id = pd.product_id
WHERE pd.product_id IS NULL;


-- Подготовка:
-- Создаем БД.
-- Создаем таблицы с данными (продукты и категории). Для этого используем запросы из 2.create-demo-catalog.sql
-- Удаляем некоторые строчки с описанием товаров: 
-- DELETE FROM product_descriptions WHERE product_id IN (2,3,5);

-- Задача:
-- Написать запрос, который выберет все продукты из таблицы products, у которых отсутствуют данные в таблице 
-- product_descriptions. Т.е. по сути нужно, чтобы мы получили продукты 2, 3 и 5.