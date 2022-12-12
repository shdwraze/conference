package com.conference.service;

enum SQLEvent{
    SELECT_ALL("select * from event"),
    GET_BY_ID("select * from event where id=?"),
    //        GET_BY_LOGIN("select * from user where login=?"),
//        UPDATE("update user set login=?, email=? where id=?"),
    INSERT("insert into event (name, descr,date) values ((?), (?),(?))");

    final String QUERY;

    SQLEvent(String QUERY) {
        this.QUERY = QUERY;
    }
}