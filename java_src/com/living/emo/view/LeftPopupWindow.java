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
import com.living.emo.adapter.MusicLeftListAdapter;
import com.living.emo.bean.MusicBean;
import com.livingai.emopet.R;
import java.util.List;
/* loaded from: classes.dex */
public class LeftPopupWindow extends PopupWindow {
    private static final String TAG = "LeftPopupWindow";
    private ImageButton mClose;
    private final View mLeftView;
    private MusicLeftListAdapter mMusicLeftListAdapter;
    private RecyclerView mMusicList;

    /* loaded from: classes.dex */
    public interface PlayerItemListener {
        void onPlayerItem(MusicBean.DataBean dataBean);
    }

    public LeftPopupWindow() {
        super(-2, -1);
        View inflate = LayoutInflater.from(MyApplication.getContext()).inflate(R.layout.pop_left_list, (ViewGroup) null, false);
        this.mLeftView = inflate;
        setContentView(inflate);
        setBackgroundDrawable(new ColorDrawable(0));
        setAnimationStyle(R.style.pop_left_animtion);
        setOutsideTouchable(true);
        setTouchable(true);
        initView();
        initEvents();
    }

    private void initView() {
        this.mClose = (ImageButton) this.mLeftView.findViewById(R.id.pop_up_close);
        this.mMusicList = (RecyclerView) this.mLeftView.findViewById(R.id.rec_music_list);
        this.mMusicList.setLayoutManager(new LinearLayoutManager(MyApplication.getContext()));
        MusicLeftListAdapter musicLeftListAdapter = new MusicLeftListAdapter();
        this.mMusicLeftListAdapter = musicLeftListAdapter;
        this.mMusicList.setAdapter(musicLeftListAdapter);
    }

    private void initEvents() {
        this.mClose.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.LeftPopupWindow.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LeftPopupWindow.this.dismiss();
            }
        });
    }

    public void setMusicList(List<MusicBean.DataBean> list) {
        this.mMusicLeftListAdapter.setData(list);
    }

    public void setPlayerItemListener(PlayerItemListener playerItemListener) {
        this.mMusicLeftListAdapter.setPlayerItemListener(playerItemListener);
    }
}
