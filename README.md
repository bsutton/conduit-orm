##  Added support for MySQL database （2020/4/25）

1. example:

``` shell
aqueduct db upgrade --connect mysql://username:password@host:port/databaseName
```

 or setting `database.yaml`:

 ``` yaml
 schema: postgres|mysql
 host: host
 port: port
 username: username
 password: password
 databaseName: databaseName
 ```

2.  `MySqlPersistentStore`:

``` dart
 final MySqlPersistentStore persistentStore = MySqlPersistentStore(
        _config.database.username,
        _config.database.password,
        _config.database.host,
        _config.database.port,
        _config.database.databaseName);

    context = ManagedContext(dataModel, persistentStore);

    /// ......
    final query = Query<User>(context,values: user)
      ..where((o) => o.username).equalTo(user.username);

    final res = await query.delete();
   /// ......
```
3. Support setting field size

``` dart
class _User extends ResourceOwnerTableDefinition {
  @Column(size: 11)
  String mobile;

  @override
  @Column(unique: true, indexed: true, size: 20)
  String username;
}

```



![Aqueduct](https://s3.amazonaws.com/aqueduct-collateral/aqueduct.png)


