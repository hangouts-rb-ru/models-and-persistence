# Models & Persistence

## Проблема

RoR разработчики впитывают active record с молоком 
и редко задумываются каким еще может быть персистенс их
моделей, какими ограничениями обладает active record
и при каких условиях стоит взглянуть на альтернативные паттерны.

Кто-то наоборот погнавшись за модой и наслушавшись умных людей решающих сложные задачи, 
обрекает себя на оверинжениринг и забивает гвозди шуруповепртом.

Цель данной встречи обсудить патерны сохранения модельного слоя и границы их применения, а также существующие реализации. Это должно помочь более сознательно принимать архитектурные решения


## План

### 0. Специфика поекта

Гвозди нужно забивать молотком, а саморезы закручивать отверткой.
Это кажется очевидным, но не для software проектов :)

### 1. Active Record 

* обсуждаем сам паттерн, 
* его реализации (ActiveRecord, Sequel, DataMapper), 
* сильные и слабые стороны
* когда его достаточно, и когда стоит задуматься


* [Active  Record](https://github.com/hangouts-rb-ru/models-and-persistence/blob/master/active-record.md)


### 2. DataMapper

* паттерн и ключевые концепции
* когда вам точно нужен datamapper, а когда хватит и AR?
* ROM - реализация datamapper для ruby, чего ожидать


* [Data Mapper](https://github.com/hangouts-rb-ru/models-and-persistence/blob/master/data-mapper.md)
* [Active Record vs Data Mapper](https://github.com/hangouts-rb-ru/models-and-persistence/blob/master/active-record-and-data-mapper.md)
* [Unit Of Work](https://github.com/hangouts-rb-ru/models-and-persistence/blob/master/unit-of-work.md)
* [Identity Map](https://github.com/hangouts-rb-ru/models-and-persistence/blob/master/identity-map.md)

### 3. PORO

* Зачем нам нужны PORO?
* Преобразования типов



* [Active Model](https://github.com/rails/rails/tree/master/activemodel)
* [Active Attr](https://github.com/cgriego/active_attr)
* [Virtus](https://github.com/solnic/virtus)
* [Attrio](https://github.com/jetrockets/attrio)


### 4. Aggregates & Document Data Bases
----------------------------------------

* Агрегаты в DDD и документные базы данных
* Postgresql как документная база данных (hstore, json)



* [DDD Aggregate](https://github.com/hangouts-rb-ru/models-and-persistence/blob/master/ddd-aggregate.md)
* [Repository](https://github.com/hangouts-rb-ru/models-and-persistence/blob/master/repository.md)
* [Aggregate Oriented Databases](https://github.com/hangouts-rb-ru/models-and-persistence/blob/master/aggregate-oriented.md)


### 5. Будущее близко

* [CQRS](https://github.com/hangouts-rb-ru/models-and-persistence/blob/master/cqrs.md)
* [Event Sourcing](https://github.com/hangouts-rb-ru/models-and-persistence/blob/master/event-sourcing.md)
* [Datomic](https://github.com/hangouts-rb-ru/models-and-persistence/blob/master/datomic.md)

