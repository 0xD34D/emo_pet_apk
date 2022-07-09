package com.living.emo.presenter;

import com.google.gson.Gson;
import com.living.emo.bean.MusicBean;
import com.living.emo.interfaces.IMusicsControlViewCallback;
import com.living.emo.interfaces.IMusicsPresenters;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class MusicsPresenters implements IMusicsPresenters {
    private static final String TAG = "com.living.emo.presenter.MusicsPresenters";
    private static MusicsPresenters instance = null;
    private static final String mMusics = "{\"code\":1,\"message\":\"success\",\"data\":[{\"name\":\"TBlame Yourself - Revolt\",\"path\":\"disc/blame_yourself_revolt.mp3\"},{\"name\":\"Blindless - Revolt\",\"path\":\"disc/blindless_revolt.mp3\"},{\"name\":\"Can I Take You There - Revolt\",\"path\":\"disc/can_i_take_you_there_revolt.mp3\"},{\"name\":\"Click (Original Mix) - Revolt\",\"path\":\"disc/click_original_mix_revolt.mp3\"},{\"name\":\"Complex - Revolt\",\"path\":\"disc/complex_revolt.mp3\"},{\"name\":\"Flashback - Revolt\",\"path\":\"disc/flashback_revolt.wav\"},{\"name\":\"Ocean Blue - Revolt\",\"path\":\"disc/ocean_blue_revolt.mp3\"},{\"name\":\"Rollercoaster - Revolt\",\"path\":\"disc/rollercoaster_revolt.mp3\"},{\"name\":\"Stars (Instrumental) - Revolt\",\"path\":\"disc/stars_instrumental_revolt.mp3\"},{\"name\":\"Time of My Life - Revolt\",\"path\":\"disc/time_of_my_life_revolt.mp3\"},{\"name\":\"Won't Let Go - Revolt\",\"path\":\"disc/wont_let_go_revolt.mp3\"},{\"name\":\"You Want Me - Revolt\",\"path\":\"disc/you_want_me_revolt.mp3\"}]}";
    private List<IMusicsControlViewCallback> mCallbacks = new ArrayList();

    @Override // com.living.emo.interfaces.IMusicsPresenters
    public void getMusicList() {
        handlerControlView(((MusicBean) new Gson().fromJson(mMusics, (Class<Object>) MusicBean.class)).getData());
    }

    private void handlerControlView(List<MusicBean.DataBean> list) {
        List<IMusicsControlViewCallback> list2 = this.mCallbacks;
        if (list2 != null) {
            for (IMusicsControlViewCallback iMusicsControlViewCallback : list2) {
                iMusicsControlViewCallback.onMusicListLoad(list);
            }
        }
    }

    private MusicsPresenters() {
    }

    public static MusicsPresenters getInstance() {
        if (instance == null) {
            synchronized (MusicsPresenters.class) {
                if (instance == null) {
                    instance = new MusicsPresenters();
                }
            }
        }
        return instance;
    }

    public void registerControlView(IMusicsControlViewCallback iMusicsControlViewCallback) {
        List<IMusicsControlViewCallback> list = this.mCallbacks;
        if (list != null && !list.contains(iMusicsControlViewCallback)) {
            this.mCallbacks.add(iMusicsControlViewCallback);
        }
    }

    @Override // com.living.emo.interfaces.IBasePresenter
    public void unRegisterControlView() {
        List<IMusicsControlViewCallback> list = this.mCallbacks;
        if (list != null) {
            list.clear();
        }
    }
}
