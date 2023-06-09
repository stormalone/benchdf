
To get up and running you will need to create two directories in this repo

* data
* queries

First grab the *data* directory from datafusion/benchmarks

* [Instructions are here for generating a data directory](https://github.com/apache/arrow-datafusion/tree/main/benchmarks#generating-data)

Second grab the *queries* directory from datafusion/benchmarks

* [Copy the queries directory over to this repo](https://github.com/apache/arrow-datafusion/tree/main/benchmarks/queries)

Then run the following command

```rust
cargo run --bin reduce_table
```

This will reduce the data down from a big table with millions of rows down to a tiny table with *row_capacity* rows and it will put the data in a directory called *datareduce*.

You can select how many rows you want in your table by modifying this parameter.

```rust
pub struct Rtconfig {
    /// The number of rows in a table
    #[arg(long, default_value_t = 100)]
    pub row_capacity: usize,
```

```rust
cargo run --bin gen_insert
```

This will then pull the data out of *datareduce* and create a bunch of sql insert statements that can be loaded into your database.

```rust
./sql/insert.sh
./sql/query.sh
```

Now that the sql insert statements have been created simply run the above insert script and to make sure the data has landed in your db run the query script second.

```rust
cargo run --bin sqlrun
```

Now you can run a subset of the tpch queries and see what results you come up with !
