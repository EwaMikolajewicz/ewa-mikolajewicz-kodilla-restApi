package com.crud.tasks;

public class NotFoundException extends NullPointerException {

    public NotFoundException() {
        super("Task wasn't found, no ID");
    }
}
