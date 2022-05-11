package BR.FAG.EDU.CONTAS.Modelo;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.UUID;

public class StatusPagamento extends BaseModelo  {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Column
    private String descricaoPgto;

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getDescricaoPgto() {
        return descricaoPgto;
    }

    public void setDescricaoPgto(String descricaoPgto) {
        this.descricaoPgto = descricaoPgto;
    }

    public StatusPagamento(UUID id, String descricaoPgto) {
        this.id = id;
        this.descricaoPgto = descricaoPgto;
    }
}
