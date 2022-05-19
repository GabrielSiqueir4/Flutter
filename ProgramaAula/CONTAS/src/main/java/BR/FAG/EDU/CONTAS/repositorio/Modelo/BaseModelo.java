package BR.FAG.EDU.CONTAS.repositorio.Modelo;

import javax.persistence.*;
import java.util.Date;


public abstract class BaseModelo {

    @Column
    @Temporal(TemporalType.TIMESTAMP)
    private Date dtUpdate;

    @Column
    @Temporal(TemporalType.TIMESTAMP)
    private Date dtCreate;

    @Column
    private long versinon;

    @PrePersist
    private void prePersist() {

        versinon = 0;
        dtCreate = new Date();
        dtUpdate = new Date();
    }

    @PreUpdate
    private void preUpdate() {
        versinon++;
        dtUpdate = new Date();
    }


}
