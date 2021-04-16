package com.example.supermarioworld;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class MainActivity extends AppCompatActivity {
    private RecyclerView recyclerView;
    private PersonagemAdapter personagemAdapter;
    private List<Personagem> personagens = new ArrayList<>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        this.recyclerView = findViewById(R.id.recycler_view);
        personagemAdapter = new PersonagemAdapter(this, personagens);
        RecyclerView.LayoutManager manager = new GridLayoutManager(this, 1);
        recyclerView.setLayoutManager(manager);
        recyclerView.setAdapter(personagemAdapter);
        PersonagemPrepare();
    }

    private void PersonagemPrepare(){
        Personagem data = new Personagem(R.mipmap.mario, "Mario", "It's a me, Mario!");
        personagens.add(data);
        data = new Personagem(R.mipmap.peach, "Princess Peach", "Whoo! Lucky me!");
        personagens.add(data);
        data = new Personagem(R.mipmap.luigi, "Luigi", "Luigi time!");
        personagens.add(data);

        Collections.sort(personagens, new Comparator<Personagem>() {
            @Override
            public int compare(Personagem p1, Personagem p2) {
                return p1.getNome().compareTo(p2.getNome());
            }
        });
    }
}