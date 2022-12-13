package com.conference.service;

enum SQLTopic {
    SELECT_ALL("select * from event"),
    GET_BY_ID("select * from event where id=?"),
    INSERT("insert into topic (name, event_id) values ((?), (?))");

    final String QUERY;

    SQLTopic(String QUERY) {
        this.QUERY = QUERY;
    }
}