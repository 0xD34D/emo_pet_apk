package com.living.emo.interfaces;

import com.living.emo.bean.MusicInfo;
/* loaded from: classes.dex */
public interface IPlayerControlView {
    void musicInfo(MusicInfo musicInfo);

    void onChangeSeekBar(String str, int i);

    void playOnChangeSate(int i);
}
