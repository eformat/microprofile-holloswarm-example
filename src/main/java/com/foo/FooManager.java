package com.foo;

import javax.ejb.Stateless;

@Stateless
public class FooManager {

    public String foo() {
        return "foo" + System.currentTimeMillis();
    }
}
