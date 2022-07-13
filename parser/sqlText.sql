select count(*) from t a, t b where a.a = b.a

select * from t ta join t tb on ta.d = tb.d and ta.d > 1 where tb.a = 0

select * from t ta join t tb on ta.d = tb.d where ta.d > 1 and tb.a = 0

select * from t ta left outer join t tb on ta.d = tb.d and ta.d > 1 where tb.a = 0

select * from t ta right outer join t tb on ta.d = tb.d and ta.a > 1 where tb.a = 0

select * from t ta left outer join t tb on ta.d = tb.d and ta.a > 1 where ta.d = 0

select * from t ta left outer join t tb on ta.d = tb.d and ta.a > 1 where tb.d = 0

select * from t ta left outer join t tb on ta.d = tb.d and ta.a > 1 where tb.c is not null and tb.c = 0 and ifnull(tb.d, 1)

select * from t ta left outer join t tb on ta.a = tb.a left outer join t tc on tb.b = tc.b where tc.c > 0

select * from t ta left outer join t tb on ta.a = tb.a left outer join t tc on tc.b = ta.b where tb.c > 0

select * from t ta left outer join t tb on ta.d = tb.d and ta.a > 1 where ifnull(tb.d, 1) or tb.d is null

select a, count(a) cnt from t group by a having cnt < 1

select t1.a, t2.a from t as t1 left join t as t2 on t1.a = t2.a where t1.a < 1.0

select * from t t1 join t t2 on t1.a = t2.a where t2.a = null
