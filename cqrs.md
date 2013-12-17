# CQRS 
_Command - Query Responsibility Segregation_

[Fowler Definition](http://martinfowler.com/bliki/CQRS.html)

## Resources
1. [CQRS Journey](http://aka.ms/cqrs) - отличный пример командной работы весьма высокого качества. Спонсировано Microsoft. Good reading! 
2. [CQRS Documents by Greg Young](http://cqrs.files.wordpress.com/2010/11/cqrs_documents.pdf)
3. Canonical Google Group (отцепилась от [DDD Yahoo Group](http://groups.yahoo.com/neo/groups/domaindrivendesign/info) в июле 2010): [dddcqrs](https://groups.google.com/forum/#!forum/dddcqrs)
4. [Introduction-to-CQRS](http://www.codeproject.com/Articles/555855/Introduction-to-CQRS)
5. [DDDSQRS.com](http://cqrs.wordpress.com/)

## People
1. [Greg Young](http://goodenoughsoftware.net/about/)
1. [Udi Dahan](http://www.udidahan.com/about/)
1. из соотечественников: [Rinat Abdullin](http://abdullin.com/)
1. [Bertrand Meyer](http://en.wikipedia.org/wiki/Bertrand_Meyer) History!
## Questions

1. Стоит ли использовать CQRS + Event Sourcing для прототипирования / в начале проекта? Аргумент "за" - принцип довольно ощутимо влияет на архитектуру. Аргумент "против" - ограничения на квалификацию команды + возможный оверхед.
2. Минусы подхода? Когда не стоит делать? ( [точка зрения](http://www.udidahan.com/2011/04/22/when-to-avoid-cqrs/) )
3. Что нужно знать команде (квалификация команды), чтобы использовать CQRS не побоявшись завязнуть? ( [опять Udi](http://www.udidahan.com/2011/10/02/why-you-should-be-using-cqrs-almost-everywhere%E2%80%A6/) )
4. Rails + CQRS? Что-то кроме [rcqrs](https://github.com/slashdotdash/rcqrs)? Есть мнение, что рельсовый стек совсем незаточен для таких вещей. 

## Доп. материалы
* [Недавнее интервью Грега](http://www.daxx.com/article/gregory-young-interview)
* [Eric Evans interviews Greg Young](http://www.infoq.com/interviews/Architecture-Eric-Evans-Interviews-Greg-Young)
* [Buzzwords и карго культ](https://groups.google.com/forum/#!topic/dddcqrs/smO8UtSFB20)
* [10 reasons to use CQRS](http://abdullin.com/journal/2010/10/22/top-10-reasons-to-do-cqrs-in-a-pdf.html)