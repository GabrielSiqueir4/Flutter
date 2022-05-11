package BR.FAG.EDU.CONTAS.Modelo;

import javax.persistence.*;
import java.sql.Date;



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
    private  void prePersist() {

        versinon = 0;
        dtCreate = new Date()
        dtUpdate = new Date();


        private void preUpdate () {
            versinon++;
            dtUpdate = new Date();
        }

    }
}
