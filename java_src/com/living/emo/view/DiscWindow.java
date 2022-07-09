package com.living.emo.view;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.living.emo.MyApplication;
import com.living.emo.adapter.DiscMusicAdapter;
import com.living.emo.bean.MusicBean;
import com.livingai.emopet.R;
import java.util.List;
/* loaded from: classes.dex */
public class DiscWindow extends PopupWindow {
    private DiscMusicAdapter mMusicAdapter;
    private View mView;

    /* loaded from: classes.dex */
    public interface PlayerItemListener {
        void onPlayerItem(MusicBean.DataBean dataBean);
    }

    public DiscWindow() {
        super(-2, -2);
        View inflate = LayoutInflater.from(MyApplication.getContext()).inflate(R.layout.disc_l_window, (ViewGroup) null, false);
        this.mView = inflate;
        setContentView(inflate);
        setOutsideTouchable(true);
        initView();
    }

    private void initView() {
        RecyclerView recyclerView = (RecyclerView) this.mView.findViewById(R.id.recy_disc_list);
        recyclerView.setLayoutManager(new LinearLayoutManager(MyApplication.getContext()));
        DiscMusicAdapter discMusicAdapter = new DiscMusicAdapter();
        this.mMusicAdapter = discMusicAdapter;
        recyclerView.setAdapter(discMusicAdapter);
    }

    public void setMusicList(List<MusicBean.DataBean> list) {
        this.mMusicAdapter.setDiscList(list);
    }

    public void setPlayerItemListener(PlayerItemListener playerItemListener) {
        this.mMusicAdapter.setPlayerItemListener(playerItemListener);
    }
}
