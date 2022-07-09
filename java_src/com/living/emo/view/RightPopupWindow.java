package com.living.emo.view;

import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.PopupWindow;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.living.emo.MyApplication;
import com.living.emo.adapter.MusicRightListAdapter;
import com.living.emo.bean.MusicBean;
import com.livingai.emopet.R;
import java.util.List;
/* loaded from: classes.dex */
public class RightPopupWindow extends PopupWindow {
    private ImageButton mClose;
    private final View mLeftView;
    private RecyclerView mMusicList;
    private MusicRightListAdapter mMusicRightListAdapter;

    /* loaded from: classes.dex */
    public interface PlayerItemClickListener {
        void playerItemClick(MusicBean.DataBean dataBean);
    }

    public RightPopupWindow() {
        super(-2, -1);
        View inflate = LayoutInflater.from(MyApplication.getContext()).inflate(R.layout.pop_right_list, (ViewGroup) null, false);
        this.mLeftView = inflate;
        setContentView(inflate);
        setBackgroundDrawable(new ColorDrawable(0));
        setOutsideTouchable(true);
        setAnimationStyle(R.style.pop_right_animtion);
        initView();
        initEvents();
    }

    private void initView() {
        this.mClose = (ImageButton) this.mLeftView.findViewById(R.id.pop_up_close);
        this.mMusicList = (RecyclerView) this.mLeftView.findViewById(R.id.rec_music_list);
        this.mMusicList.setLayoutManager(new LinearLayoutManager(MyApplication.getContext()));
        MusicRightListAdapter musicRightListAdapter = new MusicRightListAdapter();
        this.mMusicRightListAdapter = musicRightListAdapter;
        this.mMusicList.setAdapter(musicRightListAdapter);
    }

    private void initEvents() {
        this.mClose.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.RightPopupWindow.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RightPopupWindow.this.dismiss();
            }
        });
    }

    public void setMusicList(List<MusicBean.DataBean> list) {
        this.mMusicRightListAdapter.setData(list);
    }

    public void setPlayerItemClickListener(PlayerItemClickListener playerItemClickListener) {
        this.mMusicRightListAdapter.setPlayerItemClickListener(playerItemClickListener);
    }
}
