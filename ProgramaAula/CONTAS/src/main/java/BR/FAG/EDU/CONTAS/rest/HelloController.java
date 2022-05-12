package BR.FAG.EDU.CONTAS.rest;

import java.util.List;

public abstract class HelloController<T> {

    public abstract List<T> list();
}
