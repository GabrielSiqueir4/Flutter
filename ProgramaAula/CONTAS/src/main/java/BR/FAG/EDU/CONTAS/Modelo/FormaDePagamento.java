package BR.FAG.EDU.CONTAS.Modelo;

import javax.persistence.*;
import java.util.UUID;



@Entity
@Table
public class FormaDePagamento extends BaseModelo{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Column
    private String nomeFormaPgm;

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getNomeFormaPgm() {
        return nomeFormaPgm;
    }

    public void setNomeFormaPgm(String nomeFormaPgm) {
        this.nomeFormaPgm = nomeFormaPgm;
    }

    public FormaDePagamento(UUID id, String nomeFormaPgm) {
        this.id = id;
        this.nomeFormaPgm = nomeFormaPgm;
    }

}
