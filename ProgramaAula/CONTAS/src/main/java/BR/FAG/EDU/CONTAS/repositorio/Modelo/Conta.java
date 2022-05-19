package BR.FAG.EDU.CONTAS.repositorio.Modelo;
import javax.persistence.*;
import java.sql.Date;
import java.util.UUID;

@Entity
@Table
public class Conta extends BaseModelo {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    private UUID id;

    @Column
    private Date dtEmissao;

    @Column
    private Date dtVencimento;

    @ManyToOne
    private FormaDePagamento formaDePagamento;

    @ManyToOne
    private Cliente cliente;

    @Column
    private double valor;

    @Column
    private String descricao;

    @Column
    private String status;

    @Column
    @Lob
    private byte[] anexo;

    public Conta() {

    }

    public Conta(UUID id, Date dtEmissao, Date dtVencimento, FormaDePagamento formaDePagamento, Cliente cliente, double valor, String descricao, String status, byte[] anexo) {
        this.id = id;
        this.dtEmissao = dtEmissao;
        this.dtVencimento = dtVencimento;
        this.formaDePagamento = formaDePagamento;
        this.cliente = cliente;
        this.valor = valor;
        this.descricao = descricao;
        this.status = status;
        this.anexo = anexo;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public Date getDtEmissao() {
        return dtEmissao;
    }

    public void setDtEmissao(Date dtEmissao) {
        this.dtEmissao = dtEmissao;
    }

    public Date getDtVencimento() {
        return dtVencimento;
    }

    public void setDtVencimento(Date dtVencimento) {
        this.dtVencimento = dtVencimento;
    }

    public FormaDePagamento getFormaDePagamento() {
        return formaDePagamento;
    }

    public void setFormaDePagamento(FormaDePagamento formaDePagamento) {
        this.formaDePagamento = formaDePagamento;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public byte[] getAnexo() {
        return anexo;
    }

    public void setAnexo(byte[] anexo) {
        this.anexo = anexo;
    }
}

