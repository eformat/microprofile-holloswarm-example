package com.foo;

import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

@Stateless
@Path("foo")
public class FooResource {

    @Inject
    FooManager fm;

    @GET
    public String get() {
        return this.fm.foo();
    }
}
