create table if not exists users (
    id serial primary key,
    name varchar(50)
);

create table if not exists orders (
    id serial primary key,
    user_id int not null,
    date timestamp without time zone default NOW()
);

create table if not exists products (
    id serial primary key,
    category_id int not null,
    name varchar(255) not null
);

create table if not exists product_categories (
    id serial primary key,
    name varchar(255) not null
);

create table if not exists product_in_order (
    id serial primary key,
    order_id int not null,
    product_id int not null,
    product_count int not null,
    status int default 0,
    created_at timestamp without time zone default NOW(),
    updated_at timestamp without time zone default null,
    deleted_at timestamp without time zone default null
);