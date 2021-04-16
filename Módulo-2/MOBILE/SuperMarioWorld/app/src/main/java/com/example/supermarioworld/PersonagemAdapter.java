package com.example.supermarioworld;

import android.app.AlertDialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;

import java.util.List;

public class PersonagemAdapter extends RecyclerView.Adapter<PersonagemAdapter.ViewHolder> {
    private List<Personagem> personagens;
    private Context context;

    PersonagemAdapter(Context context, List<Personagem> personagens) {
        this.context = context;
        this.personagens = personagens;
    }

    @NonNull
    @Override
    public PersonagemAdapter.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext()).inflate(R.layout.personagem_row_list, parent, false);
        ViewHolder viewHolder = new ViewHolder(itemView);
        return viewHolder;
    }

    @Override
    public void onBindViewHolder(@NonNull PersonagemAdapter.ViewHolder holder, int position) {
        Personagem personagem = personagens.get(position);
        holder.image.setImageResource((personagem.getRes()));
        holder.name.setText(personagem.getNome());
        holder.detail.setText(personagem.getDescricao());

        holder.itemView.setOnClickListener(view -> {
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setIcon(R.mipmap.ic_launcher);
            builder.setIcon(personagens.get(position).getRes())
                    .setTitle(personagens.get(position).getNome())
                    .setMessage(personagens.get(position).getDescricao())
                    .setCancelable(false)
                    .setPositiveButton("Ok", null);
            builder.create().show();
        });
    }

    @Override
    public int getItemCount() {
        return personagens.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        TextView name, detail;
        ImageView image;
        LinearLayout parent;
        private CardView card_view;

        public ViewHolder(View itemView) {
            super(itemView);
            parent = itemView.findViewById(R.id.parent);
            image = itemView.findViewById(R.id.image);
            name = itemView.findViewById(R.id.name);
            detail = itemView.findViewById(R.id.detail);
            card_view = itemView.findViewById(R.id.card_view);
        }

    }
}