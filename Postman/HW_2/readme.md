# The second task

- [Collection](https://github.com/zakharov-dmitriy/hw_tasks/blob/main/Postman/HW_2/HW2_34group.postman_collection.json)
- [Environment](https://github.com/zakharov-dmitriy/hw_tasks/blob/main/Postman/HW_2/hw34.postman_environment.json)

### Description

<http://162.55.220.72:5005/first>

1. Отправить запрос.
2. Статус код **200**.
3. Проверить, что в `body` приходит правильный string.

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

<http://162.55.220.72:5005/object_info_3>

1. Отправить запрос.
2. Статус код **200**.
3. Спарсить `response body` в json.

> const res_json = pm.response.json();
или
> const resJson = JSON.parse(responseBody);

4. Спарсить `request`.

> const req_json = request.data;
