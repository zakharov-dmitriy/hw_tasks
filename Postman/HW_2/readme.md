# The second task

- [Collection](https://github.com/zakharov-dmitriy/hw_tasks/blob/main/Postman/HW_2/HW2_34group.postman_collection.json)
- [Environment](https://github.com/zakharov-dmitriy/hw_tasks/blob/main/Postman/HW_2/hw34.postman_environment.json)

### Description

#### Endpoint ***/first***

<http://162.55.220.72:5005/first>

1. Отправить запрос.
2. Статус код **200**.
3. Проверить, что в `body` приходит правильный string.

#### Endpoint ***/user_info_3***

<http://162.55.220.72:5005/user_info_3>

1. Отправить запрос.
2. Статус код **200**.
3. Спарсить `response body` в json.

> const res_json = pm.response.json();

4. Проверить, что `name` в ответе равно `name` в `request` (name вбить руками).

> const res_name = res_json.name;

```
pm.test("Checking request/response param NAME", function (){
    pm.expect(res_name).to.eql("Dmitriy")
});
```

5. Проверить, что `age` в ответе равно `age` в `request` (age вбить руками).

> const res_age = +res_json.age;

```
pm.test("Checking request/response param AGE", function (){
    pm.expect(res_age).to.eql(35)
});
```

6. Проверить, что `salary` в ответе равно `salary` в `request` (salary вбить руками).

> const res_salary = res_json.salary;

```
pm.test("Checking request/response param SALARY", function (){
    pm.expect(res_salary).to.eql(1100)
});
```

7. Спарсить `request`.

> const req_json = request.data;

8. Проверить, что `name` в ответе равно `name` в `request` (name забрать из request).

> const req_name = req_json.name;

```
pm.test("Checking response/request param NAME", function (){
    pm.expect(res_name).to.eql(req_name)
});
```

9. Проверить, что `age` в ответе равно `age` в `request` (age забрать из request).

> const req_age = +req_json.age;

```
pm.test("Checking response/request param AGE", function (){
    pm.expect(res_age).to.eql(req_age)
});
```

10. Проверить, что `salary` в ответе равно `salary` в `request` (salary забрать из request).

> const req_salary = +req_json.salary;

```
pm.test("Checking response/request param SALARY", function (){
    pm.expect(res_salary).to.eql(req_salary)
});
```

11. Вывести в консоль параметр `family` из `response`.

> console.log(res_json.family);

12. Проверить что `u_salary_1_5_year` в ответе равно `salary*4` (salary забрать из request).

> const u_salary = res_json.family.u_salary_1_5_year;

```
pm.test("Checking U_SALARY", function (){
    pm.expect(u_salary).to.eql(req_salary*4)
});
```

#### Endpoint ***/object_info_3***

<http://162.55.220.72:5005/object_info_3>

1. Отправить запрос.
2. Статус код **200**.
3. Спарсить `response body` в json.

> const res_json = pm.response.json();
или
> const resJson = JSON.parse(responseBody);

4. Спарсить `request`.

> const req_json = request.data;

> ++++++++++++

###### Текст всего задания ниже

```
HW_2 Postman

http://162.55.220.72:5005/first
1. Отправить запрос.
2. Статус код 200
3. Проверить, что в body приходит правильный string.

http://162.55.220.72:5005/user_info_3
1. Отправить запрос.
2. Статус код 200
3. Спарсить response body в json.
4. Проверить, что name в ответе равно name s request (name вбить руками.)
5. Проверить, что age в ответе равно age s request (age вбить руками.)
6. Проверить, что salary в ответе равно salary s request (salary вбить руками.)
7. Спарсить request.
8. Проверить, что name в ответе равно name s request (name забрать из request.)
9. Проверить, что age в ответе равно age s request (age забрать из request.)
10. Проверить, что salary в ответе равно salary s request (salary забрать из request.)
11. Вывести в консоль параметр family из response.
12. Проверить что u_salary_1_5_year в ответе равно salary*4 (salary забрать из request)

http://162.55.220.72:5005/object_info_3
1. Отправить запрос.
2. Статус код 200
3. Спарсить response body в json.
4. Спарсить request.
5. Проверить, что name в ответе равно name s request (name забрать из request.)
6. Проверить, что age в ответе равно age s request (age забрать из request.)
7. Проверить, что salary в ответе равно salary s request (salary забрать из request.)
8. Вывести в консоль параметр family из response.
9. Проверить, что у параметра dog есть параметры name.
10. Проверить, что у параметра dog есть параметры age.
11. Проверить, что параметр name имеет значение Luky.
12. Проверить, что параметр age имеет значение 4.


============================================================================
http://162.55.220.72:5005/object_info_4
1. Отправить запрос.
2. Статус код 200
3. Спарсить response body в json.
4. Спарсить request.
5. Проверить, что name в ответе равно name s request (name забрать из request.)
6. Проверить, что age в ответе равно age из request (age забрать из request.)
7. Вывести в консоль параметр salary из request.
8. Вывести в консоль параметр salary из response.
9. Вывести в консоль 0-й элемент параметра salary из response.
10. Вывести в консоль 1-й элемент параметра salary параметр salary из response.
11. Вывести в консоль 2-й элемент параметра salary параметр salary из response.
12. Проверить, что 0-й элемент параметра salary равен salary из request (salary забрать из request.)
13. Проверить, что 1-й элемент параметра salary равен salary*2 из request (salary забрать из request.)
14. Проверить, что 2-й элемент параметра salary равен salary*3 из request (salary забрать из request.)
15. Создать в окружении переменную name
16. Создать в окружении переменную age
17. Создать в окружении переменную salary
18. Передать в окружение переменную name
19. Передать в окружение переменную age
20. Передать в окружение переменную salary
21. Написать цикл который выведет в консоль по порядку элементы списка из параметра salary.

=============================================================================

http://162.55.220.72:5005/user_info_2
1. Вставить параметр salary из окружения в request
2. Вставить параметр age из окружения в age
3. Вставить параметр name из окружения в name
4. Отправить запрос.
5. Статус код 200
6. Спарсить response body в json.
7. Спарсить request.
8. Проверить, что json response имеет параметр start_qa_salary
9. Проверить, что json response имеет параметр qa_salary_after_6_months
10. Проверить, что json response имеет параметр qa_salary_after_12_months
11. Проверить, что json response имеет параметр qa_salary_after_1.5_year
12. Проверить, что json response имеет параметр qa_salary_after_3.5_years
13. Проверить, что json response имеет параметр person
14. Проверить, что параметр start_qa_salary равен salary из request (salary забрать из request.)
15. Проверить, что параметр qa_salary_after_6_months равен salary*2 из request (salary забрать из request.)
16. Проверить, что параметр qa_salary_after_12_months равен salary*2.7 из request (salary забрать из request.)
17. Проверить, что параметр qa_salary_after_1.5_year равен salary*3.3 из request (salary забрать из request.)
18. Проверить, что параметр qa_salary_after_3.5_years равен salary*3.8 из request (salary забрать из request.)
19. Проверить, что в параметре person, 1-й элемент из u_name равен salary из request (salary забрать из request.)
20. Проверить, что что параметр u_age равен age из request (age забрать из request.)
21. Проверить, что параметр u_salary_5_years равен salary*4.2 из request (salary забрать из request.)
22. ***Написать цикл который выведет в консоль по порядку элементы списка из параметра person.

```
