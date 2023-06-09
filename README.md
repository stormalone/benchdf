
* To get up and running first grab the *data* directory from datafusion.
* [Instructions are here on grabbing the data and creating a data directory](https://github.com/apache/arrow-datafusion/tree/main/benchmarks#generating-data)


Then run the following command

```rust
cargo run --bin reduce_table
```

This will reduce the data down from a big table with millions of rows down to a tiny table with 1000 rows.

```rust
cargo run --bin gen_insert
```

```rust
./sql/insert.sh
./sql/query.sh
```

```rust
cargo run --bin sqlrun
```
