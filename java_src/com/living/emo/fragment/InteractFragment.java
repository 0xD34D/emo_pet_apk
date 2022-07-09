package com.living.emo.fragment;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.living.emo.activity.InteractActivity;
import com.living.emo.adapter.InteractAdapter;
import com.living.emo.bean.InteractBean;
import com.livingai.emopet.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class InteractFragment extends AbstractBaseFragment {
    @BindView(R.id.recy_interact_list)
    RecyclerView mInteractList;

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected int loadRootViewResId() {
        return R.layout.fragment_interact;
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    public void initView() {
        this.mInteractList.setLayoutManager(new GridLayoutManager(requireActivity(), 3));
        this.mInteractList.setAdapter(new InteractAdapter(data(), (InteractActivity) requireActivity()));
    }

    private List<InteractBean> data() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new InteractBean("Recognition", R.drawable.int_pic_shibie, "EMO can recognize faces.", null));
        arrayList.add(new InteractBean("Games", R.drawable.int_pic_games, "EMO will be happy to play games with you.", "You can use the App to play some games with EMO, or you can play some games directly by talking. Such as: Hey EMO, let's play angry EMO."));
        arrayList.add(new InteractBean("Petting", R.drawable.int_pic_fumo, "Pet EMO with your love.", null));
        arrayList.add(new InteractBean("Utilities", R.drawable.int_pic_tools, "EMO is always ready to help.", "You can ask EMO about the weather and time. You can also ask EMO to turn on the lights, take pictures, or set an alarm for you."));
        arrayList.add(new InteractBean("Sensors", R.drawable.int_pic_take, "EMO can feel by various sensors.", "EMO has many sensors. He could feel it when he was picked up or fell over. He can also see you blocking his way."));
        arrayList.add(new InteractBean("Music", R.drawable.int_pic_music, "EMO loves to listen to music.", "Ask EMO to listen to music, and he will be excited. Tips: let EMO listen to music more so that he can learn new dances."));
        arrayList.add(new InteractBean("Questions", R.drawable.int_pic_questions, "Ask EMO questions about him.", "Ask emo about his age, favorite colors, favorite flowers, etc, and he will answer you."));
        arrayList.add(new InteractBean("Easter eggs", R.drawable.int_pic_egg, "EMO can do little tricks as easter eggs.", "Talk to emo, he might do little tricks. such as: Hey EMO, give me a cake. Or: Hey EMO, show laser eyes."));
        arrayList.add(new InteractBean("Charging", R.drawable.int_pic_charge, "Don't forget to charge EMO.", null));
        arrayList.add(new InteractBean("Shaking", R.drawable.int_pic_yaohuang, "Shake EMO and see how he reacts.", null));
        return arrayList;
    }
}
