# CatsLover

---
Git 安装操作
https://blog.csdn.net/mooncrystal123/article/details/86478111

---


##### Mysql 版本 8.0.18 

##### 运行的 configuration 配置：
     1.选择maven
     2.工作路径选择到 CatsLover_manager
     3.命令为clean tomcat7:run(注：中间有一个空格）

---

##### 问题记录
1. 在CatsLover_manager的pom中去依赖CatsLover_common模块，build没有问题，运行会报错找不到common模块

---
###### Spring 版本为 4.1.3.RELEASE
###### 如果使用最新的 5.2.2.RELEASE 会出现 context initialization failed 错误 原因待查

---
Mybatis 的用法

##### 一、mapper接口中的方法解析
     mapper接口中的函数及方法

|方法|	功能说明|
|---|---|
|int countByExample(UserExample example) thorws SQLException|按条件计数|
|int deleteByPrimaryKey(Integer id) thorws SQLException|按主键删除|
|int deleteByExample(UserExample example) thorws SQLException|按条件查询|
|String/Integer insert(User record) thorws SQLException|插入数据（返回值为ID）|
|User selectByPrimaryKey(Integer id) thorws SQLException|按主键查询|
|ListselectByExample(UserExample example) thorws SQLException|按条件查询|
|ListselectByExampleWithBLOGs(UserExample example) thorws SQLException|按条件查询（包括BLOB字段）。只有当数据表中的字段类型有为二进制的才会产生。|
|int updateByPrimaryKey(User record) thorws SQLException|按主键更新|
|int updateByPrimaryKeySelective(User record) thorws SQLException|按主键更新值不为null的字段|
|int updateByExample(User record, UserExample example) thorws SQLException|按条件更新|
|int updateByExampleSelective(User record, UserExample example) thorws SQLException|按条件更新值不为null的字段|

##### 二、example实例解析
     mybatis的逆向工程中会生成实例及实例对应的example，example用于添加条件，相当where后面的部分
     xxxExample example = new xxxExample();
     Criteria criteria = new Example().createCriteria();

|方法|说明|
|---|---|
|example.setOrderByClause(“字段名 ASC”);|添加升序排列条件，DESC为降序|
|example.setDistinct(false)|去除重复，boolean型，true为选择不重复的记录。|
|criteria.andXxxIsNull|添加字段xxx为null的条件|
|criteria.andXxxIsNotNull|添加字段xxx不为null的条件|
|criteria.andXxxEqualTo(value)|添加xxx字段等于value条件|
|criteria.andXxxNotEqualTo(value)|添加xxx字段不等于value条件|
|criteria.andXxxGreaterThan(value)|添加xxx字段大于value条件|
|criteria.andXxxGreaterThanOrEqualTo(value)|添加xxx字段大于等于value条件|
|criteria.andXxxLessThan(value)|添加xxx字段小于value条件|
|criteria.andXxxLessThanOrEqualTo(value)|添加xxx字段小于等于value条件|
|criteria.andXxxIn(List<？>)|添加xxx字段值在List<？>条件|
|criteria.andXxxNotIn(List<？>)|添加xxx字段值不在List<？>条件|
|criteria.andXxxLike(“%”+value+”%”)|添加xxx字段值为value的模糊查询条件|
|criteria.andXxxNotLike(“%”+value+”%”)|添加xxx字段值不为value的模糊查询条件|
|criteria.andXxxBetween(value1,value2)|添加xxx字段值在value1和value2之间条件|
|criteria.andXxxNotBetween(value1,value2)|添加xxx字段值不在value1和value2之间条件|

##### 三、应用举例
###### 1.查询
① selectByPrimaryKey()

     User user = XxxMapper.selectByPrimaryKey(100); //相当于select * from user where id = 100

② selectByExample() 和 selectByExampleWithBLOGs()

     UserExample example = new UserExample();
     Criteria criteria = example.createCriteria();
     criteria.andUsernameEqualTo("wyw");
     criteria.andUsernameIsNull();
     example.setOrderByClause("username asc,email desc");
     List<?>list = XxxMapper.selectByExample(example);
     //相当于：select * from user where username = 'wyw' and  username is null order by username asc,email desc

注：在iBator逆向工程生成的文件XxxExample.java中包含一个static的内部类Criteria，Criteria中的方法是定义SQL 语句where后的查询条件。

###### 2.插入数据

①insert()

     User user = new User();
     user.setId("dsfgsdfgdsfgds");
     user.setUsername("admin");
     user.setPassword("admin")
     user.setEmail("wyw@163.com");
     XxxMapper.insert(user);
     //相当于：insert into user(ID,username,password,email) values ('dsfgsdfgdsfgds','admin','admin','wyw@126.com');

###### 3.更新数据

①updateByPrimaryKey()

     User user =new User();
     user.setId("dsfgsdfgdsfgds");
     user.setUsername("wyw");
     user.setPassword("wyw");
     user.setEmail("wyw@163.com");
     XxxMapper.updateByPrimaryKey(user);
     //相当于：update user set username='wyw', password='wyw', email='wyw@163.com' where id='dsfgsdfgdsfgds'

②updateByPrimaryKeySelective()

     User user = new User();
     user.setId("dsfgsdfgdsfgds");
     user.setPassword("wyw");
     XxxMapper.updateByPrimaryKey(user);
     //相当于：update user set password='wyw' where id='dsfgsdfgdsfgds'

③ updateByExample() 和 updateByExampleSelective()

     UserExample example = new UserExample();
     Criteria criteria = example.createCriteria();
     criteria.andUsernameEqualTo("admin");
     User user = new User();
     user.setPassword("wyw");
     XxxMapper.updateByPrimaryKeySelective(user,example);
     //相当于：update user set password='wyw' where username='admin'

updateByExample()更新所有的字段，包括字段为null的也更新，建议使用 updateByExampleSelective()更新想更新的字段

###### 4.删除数据
①deleteByPrimaryKey()

     XxxMapper.deleteByPrimaryKey(1);  //相当于：delete from user where id=1

②deleteByExample()

     UserExample example = new UserExample();
     Criteria criteria = example.createCriteria();
     criteria.andUsernameEqualTo("admin");
     XxxMapper.deleteByExample(example);
     //相当于：delete from user where username='admin'

###### 5.查询数据数量
①countByExample()

     UserExample example = new UserExample();
     Criteria criteria = example.createCriteria();
     criteria.andUsernameEqualTo("wyw");
     int count = XxxMapper.countByExample(example);
     //相当于：select count(*) from user where username='wyw'


---
前期准备工作：
大家先去学习相关的技术点，整理成文档上传方便共同学习。

1.IDEA 相关的 git 操作，包括上传代码、下载代码等

2. XML 的配置

3. MyBatis的使用，包括与他相关的xml配置

4. mysql 数据库的连接。
ide连接mysql数据库：
https://blog.csdn.net/wk992337444/article/details/79279276
如下载相关包时遇到时区问题：
https://blog.csdn.net/weixin_42941486/article/details/100660560


5. MVC 三者的关系。

6. tomcat服务器的配置。

7. Spring MVC 
