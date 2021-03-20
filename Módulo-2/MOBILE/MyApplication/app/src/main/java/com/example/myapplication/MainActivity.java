    package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        final ListView listView;
        listView = findViewById(R.id.listViewAlunos);

        List<Aluno> lista = retornaListaAlunos();

        final ArrayAdapter<Aluno> adapterList;
        adapterList = new ArrayAdapter<Aluno>(this, android.R.layout.simple_expandable_list_item_1, lista);

        listView.setAdapter(adapterList);
    }

    private List<Aluno> retornaListaAlunos(){
        List<Aluno> lista = new ArrayList<Aluno>();

        Aluno aluno1 = new Aluno();
        aluno1.setRa(122);
        aluno1.nome = "Laura";
        aluno1.email = "laura@email.com";

        lista.add(aluno1);
        lista.add(new Aluno(123, "Lais", "lais@email.com"));

        return lista;
    }
}