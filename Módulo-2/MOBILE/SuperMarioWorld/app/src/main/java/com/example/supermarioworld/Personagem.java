package com.example.supermarioworld;

public class Personagem {

    private int res;
    private String nome;
    private String descricao;

    public Personagem() {
    }

    public Personagem(int res, String nome, String descricao) {
        this.res = res;
        this.nome = nome;
        this.descricao = descricao;
    }

    public int getRes() {
        return res;
    }

    public String getNome() {
        return nome;
    }

    public String getDescricao() {
        return descricao;
    }
}
