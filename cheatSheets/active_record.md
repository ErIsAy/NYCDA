

#H1 In context of databases:
colums = methods

Classes correspond to => Table  

instances corresponf to => row/records


#H3 Defining a **model** class
  * Singular version of the pluralized table names (table names are always going to be plural.)
  * Capitalized/Camel Case
  * Inherit from ActiveRecord::Base



#H3 Creating tables

* **saves to database automatically**
```
Student.create(...)   
```

* creates a new instance but doesnt save until you call the .save method

```
s = Student.new(...) 
then
s.save
```

#h3 will retrieve a single record

```
.first
.last
Student.find(some_id)
Student.find_by(search_by_attributes/columnames)
```

#h3 will return multiple records

**these return an array of record/instances**
```
Student.where(attributes/column_names_to_search_by) 
```

#h3 Updating 

```
my_student = Student.find(i) 
```
```
my_student.update(...)  
```
**will update it in the database**

**or**

```
my_student.first    
my_student.save()
```
**wont update until you call .save()**

#h3 Destroy

```
my_student.destroy
```
```
my_student.destroy(id)
```
```
student.destroy_all
```

#H3 Relationships


has_one :class_b


belong_to :class_a(singular)
