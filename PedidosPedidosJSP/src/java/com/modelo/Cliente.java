package com.modelo;

import java.util.Date;

/**
 *
 * @author Alex Pabón
 */
public class Cliente {
    private String tipoDocumCliente;
    private int documCliente;
    private String nombresCliente;
    private String apellidosCliente;
    private Date fechaNacCliente;
    private String generoCliente;
    private int telCliente;
    private int celCliente;
    private String direccionCliente;
    private String correoCliente;

    public Cliente() {
    }

    public int getDocumCliente() {
        return documCliente;
    }

    public void setDocumCliente(int documCliente) {
        this.documCliente = documCliente;
    }

    public String getTipoDocumCliente() {
        return tipoDocumCliente;
    }

    public void setTipoDocumCliente(String tipoDocumCliente) {
        this.tipoDocumCliente = tipoDocumCliente;
    }

    public String getNombresCliente() {
        return nombresCliente;
    }

    public void setNombresCliente(String nombresCliente) {
        this.nombresCliente = nombresCliente;
    }

    public String getApellidosCliente() {
        return apellidosCliente;
    }

    public void setApellidosCliente(String apellidosCliente) {
        this.apellidosCliente = apellidosCliente;
    }

    public Date getFechaNacCliente() {
        return fechaNacCliente;
    }

    public void setFechaNacCliente(Date fechaNacCliente) {
        this.fechaNacCliente = fechaNacCliente;
    }

    public String getGeneroCliente() {
        return generoCliente;
    }

    public void setGeneroCliente(String generoCliente) {
        this.generoCliente = generoCliente;
    }

    public int getTelCliente() {
        return telCliente;
    }

    public void setTelCliente(int telCliente) {
        this.telCliente = telCliente;
    }

    public int getCelCliente() {
        return celCliente;
    }

    public void setCelCliente(int celCliente) {
        this.celCliente = celCliente;
    }

    public String getDireccionCliente() {
        return direccionCliente;
    }

    public void setDireccionCliente(String direccionCliente) {
        this.direccionCliente = direccionCliente;
    }

    public String getCorreoCliente() {
        return correoCliente;
    }

    public void setCorreoCliente(String correoCliente) {
        this.correoCliente = correoCliente;
    }

}
