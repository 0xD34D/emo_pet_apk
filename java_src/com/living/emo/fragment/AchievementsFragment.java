package com.living.emo.fragment;

import android.app.Dialog;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.clj.fastble.data.BleDevice;
import com.living.emo.activity.LifeTimeActivity;
import com.living.emo.adapter.LifeTimeAdapter;
import com.living.emo.bean.AchievementBean;
import com.living.emo.bean.BleBean;
import com.living.emo.blebean.parse.BleAchievementsResponseParse;
import com.living.emo.blebean.response.ResultResponse;
import com.living.emo.blebean.util.BleJsonUtil;
import com.living.emo.blebean.util.BleRequestUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.model.Constants;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.LogUtil;
import com.livingai.emopet.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class AchievementsFragment extends AbstractBaseFragment {
    private long currTime = 0;
    private BleDevice mBleDevice;
    private Dialog mDialog;
    private FragmentManager mFm;
    @BindView(R.id.life_time_rec)
    public RecyclerView mLifeRec;
    private LifeTimeActivity mLifeTimeActivity;
    private LifeTimeAdapter mLifeTimeAdapter;
    private LiftTimeFragment mLiftTimeFragment;
    private ArrayList<AchievementBean> mList;
    private ArrayList<AchievementBean> mSelctList;

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected int loadRootViewResId() {
        return R.layout.fragment_achievements;
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initView() {
        EventBus.getDefault().register(this);
        this.mBleDevice = BleBean.getInstance().getBleDevice();
        LifeTimeActivity lifeTimeActivity = (LifeTimeActivity) requireActivity();
        this.mLifeTimeActivity = lifeTimeActivity;
        lifeTimeActivity.mUtilities_back.setOnClickListener(null);
        this.mFm = this.mLifeTimeActivity.getSupportFragmentManager();
        this.mLifeTimeActivity.mTopTxtIv.setBackgroundResource(R.drawable.txt_lifetime);
        this.mLifeTimeActivity.mRoot.setBackgroundResource(R.drawable.life_bg);
        final List asList = Arrays.asList(getResources().getStringArray(R.array.achvs));
        LifeTimeAdapter lifeTimeAdapter = new LifeTimeAdapter(getActivity());
        this.mLifeTimeAdapter = lifeTimeAdapter;
        lifeTimeAdapter.setOnClickListener(new LifeTimeAdapter.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$AchievementsFragment$wAXwGrZRxqP8eBFxjMMhtQMZvHE
            @Override // com.living.emo.adapter.LifeTimeAdapter.OnClickListener
            public final void onClick(int i, AchievementBean achievementBean) {
                AchievementsFragment.this.lambda$initView$0$AchievementsFragment(asList, i, achievementBean);
            }
        });
        this.mLifeRec.setLayoutManager(new GridLayoutManager(requireActivity(), 4));
        this.mLifeRec.setAdapter(this.mLifeTimeAdapter);
        this.mLiftTimeFragment = new LiftTimeFragment();
    }

    public /* synthetic */ void lambda$initView$0$AchievementsFragment(List list, int i, AchievementBean achievementBean) {
        if (System.currentTimeMillis() - this.currTime >= 3000) {
            this.currTime = System.currentTimeMillis();
            LogUtil.m64e("TAG", "initView: position:" + i + "  current:" + System.currentTimeMillis());
            askDialog(achievementBean);
            this.mLifeTimeActivity.write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.animRequest("play", (String) list.get(i))));
            return;
        }
        this.mLifeTimeActivity.showToast(getString(R.string.many_operations));
    }

    private void switchFragment(AbstractBaseFragment abstractBaseFragment) {
        FragmentTransaction beginTransaction = this.mFm.beginTransaction();
        beginTransaction.replace(this.mLifeTimeActivity.mFrameLayout.getId(), abstractBaseFragment);
        beginTransaction.commit();
    }

    private void askDialog(AchievementBean achievementBean) {
        this.mDialog = new Dialog(requireContext(), R.style.CustomDialogTheme);
        View inflate = View.inflate(requireContext(), R.layout.dialog_achiev_desc, null);
        inflate.findViewById(R.id.achv_img_view).setBackgroundResource(achievementBean.getRes());
        ((TextView) inflate.findViewById(R.id.achv_txt_view)).setText(achievementBean.getDesc());
        this.mDialog.setCanceledOnTouchOutside(true);
        this.mDialog.setCancelable(true);
        this.mDialog.setContentView(inflate);
        this.mDialog.show();
        this.mDialog.getWindow().setLayout(1082, 540);
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void initEvent() {
        this.mLifeTimeActivity.mUtilities_back.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$AchievementsFragment$NDIrIOdwz1KrQqeFGUhfK03Xg8I
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AchievementsFragment.this.lambda$initEvent$1$AchievementsFragment(view);
            }
        });
    }

    public /* synthetic */ void lambda$initEvent$1$AchievementsFragment(View view) {
        switchFragment(this.mLiftTimeFragment);
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initData() {
        ArrayList<AchievementBean> arrayList = new ArrayList<>();
        this.mSelctList = arrayList;
        arrayList.add(0, new AchievementBean(R.drawable.achv1_reached, "############", true));
        this.mSelctList.add(1, new AchievementBean(R.drawable.achv1_reached, getString(R.string.achv_petting), true));
        this.mSelctList.add(2, new AchievementBean(R.drawable.achv2_reached, getString(R.string.achv_shaked), true));
        this.mSelctList.add(3, new AchievementBean(R.drawable.achv3_reached, getString(R.string.achv_fall), true));
        this.mSelctList.add(4, new AchievementBean(R.drawable.achv4_reached, getString(R.string.achv_charge), true));
        this.mSelctList.add(5, new AchievementBean(R.drawable.achv5_reached, getString(R.string.achv_cliff), true));
        this.mSelctList.add(6, new AchievementBean(R.drawable.achv6_reached, getString(R.string.achv_wakeup), true));
        this.mSelctList.add(7, new AchievementBean(R.drawable.achv7_reached, getString(R.string.achv_unknown), true));
        this.mSelctList.add(8, new AchievementBean(R.drawable.achv8_reached, getString(R.string.achv_weather), true));
        this.mSelctList.add(9, new AchievementBean(R.drawable.achv9_reached, getString(R.string.achv_time), true));
        this.mSelctList.add(10, new AchievementBean(R.drawable.achv10_reached, getString(R.string.achv_alarm), true));
        this.mSelctList.add(11, new AchievementBean(R.drawable.achv11_reached, getString(R.string.achv_timer), true));
        this.mSelctList.add(12, new AchievementBean(R.drawable.achv12_reached, getString(R.string.achv_light_on), true));
        this.mSelctList.add(13, new AchievementBean(R.drawable.achv13_reached, getString(R.string.achv_light_off), true));
        this.mSelctList.add(14, new AchievementBean(R.drawable.achv14_reached, getString(R.string.achv_photo), true));
        this.mSelctList.add(15, new AchievementBean(R.drawable.achv15_reached, getString(R.string.achv_birthday), true));
        this.mSelctList.add(16, new AchievementBean(R.drawable.achv16_reached, getString(R.string.achv_frighten), true));
        this.mSelctList.add(17, new AchievementBean(R.drawable.achv17_reached, getString(R.string.achv_unknown), true));
        this.mSelctList.add(18, new AchievementBean(R.drawable.achv18_reached, getString(R.string.achv_rhythmic), true));
        this.mSelctList.add(19, new AchievementBean(R.drawable.achv19_reached, getString(R.string.achv_unknown), true));
        this.mSelctList.add(20, new AchievementBean(R.drawable.achv20_reached, getString(R.string.achv_remember), true));
        this.mSelctList.add(21, new AchievementBean(R.drawable.achv21_reached, getString(R.string.achv_chess), true));
        this.mSelctList.add(22, new AchievementBean(R.drawable.achv22_reached, getString(R.string.achv_music), true));
        this.mSelctList.add(23, new AchievementBean(R.drawable.achv23_reached, getString(R.string.achv_dance), true));
        this.mSelctList.add(24, new AchievementBean(R.drawable.achv24_reached, getString(R.string.achv_face), true));
        this.mSelctList.add(25, new AchievementBean(R.drawable.achv25_reached, getString(R.string.achv_dog), true));
        this.mSelctList.add(26, new AchievementBean(R.drawable.achv26_reached, getString(R.string.achv_sleep), true));
        this.mSelctList.add(27, new AchievementBean(R.drawable.achv27_reached, getString(R.string.achv_unknown), true));
        this.mSelctList.add(28, new AchievementBean(R.drawable.achv28_reached, getString(R.string.achv_unknown), true));
        this.mSelctList.add(29, new AchievementBean(R.drawable.achv32_reached, getString(R.string.achv_bullet_time), true));
        this.mSelctList.add(30, new AchievementBean(R.drawable.achv30_reached, getString(R.string.achv_fortune_teller), true));
        this.mSelctList.add(31, new AchievementBean(R.drawable.achv31_reached, getString(R.string.achv_lucky_duck), true));
        this.mSelctList.add(32, new AchievementBean(R.drawable.achv29_reached, getString(R.string.achv_fashion_icon), true));
        ArrayList<AchievementBean> arrayList2 = new ArrayList<>();
        this.mList = arrayList2;
        arrayList2.add(0, new AchievementBean(R.drawable.achv1, "########", false));
        this.mList.add(1, new AchievementBean(R.drawable.achv1, getString(R.string.achv_petting), false));
        this.mList.add(2, new AchievementBean(R.drawable.achv2, getString(R.string.achv_shaked), false));
        this.mList.add(3, new AchievementBean(R.drawable.achv3, getString(R.string.achv_fall), false));
        this.mList.add(4, new AchievementBean(R.drawable.achv4, getString(R.string.achv_charge), false));
        this.mList.add(5, new AchievementBean(R.drawable.achv5, getString(R.string.achv_cliff), false));
        this.mList.add(6, new AchievementBean(R.drawable.achv6, getString(R.string.achv_wakeup), false));
        this.mList.add(7, new AchievementBean(R.drawable.achv7, getString(R.string.achv_unknown), false).setAvailable(true));
        this.mList.add(8, new AchievementBean(R.drawable.achv8, getString(R.string.achv_weather), false));
        this.mList.add(9, new AchievementBean(R.drawable.achv9, getString(R.string.achv_time), false));
        this.mList.add(10, new AchievementBean(R.drawable.achv10, getString(R.string.achv_alarm), false));
        this.mList.add(11, new AchievementBean(R.drawable.achv11, getString(R.string.achv_timer), false));
        this.mList.add(12, new AchievementBean(R.drawable.achv12, getString(R.string.achv_light_on), false));
        this.mList.add(13, new AchievementBean(R.drawable.achv13, getString(R.string.achv_light_off), false));
        this.mList.add(14, new AchievementBean(R.drawable.achv14, getString(R.string.achv_photo), false));
        this.mList.add(15, new AchievementBean(R.drawable.achv15, getString(R.string.achv_birthday), false));
        this.mList.add(16, new AchievementBean(R.drawable.achv16, getString(R.string.achv_frighten), false));
        this.mList.add(17, new AchievementBean(R.drawable.achv17, getString(R.string.achv_unknown), false).setAvailable(true));
        this.mList.add(18, new AchievementBean(R.drawable.achv18, getString(R.string.achv_rhythmic), false));
        this.mList.add(19, new AchievementBean(R.drawable.achv19, getString(R.string.achv_unknown), false));
        this.mList.add(20, new AchievementBean(R.drawable.achv20, getString(R.string.achv_remember), false));
        this.mList.add(21, new AchievementBean(R.drawable.achv21, getString(R.string.achv_chess), false));
        this.mList.add(22, new AchievementBean(R.drawable.achv22, getString(R.string.achv_music), false));
        this.mList.add(23, new AchievementBean(R.drawable.achv23, getString(R.string.achv_dance), false));
        this.mList.add(24, new AchievementBean(R.drawable.achv24, getString(R.string.achv_face), false));
        this.mList.add(25, new AchievementBean(R.drawable.achv25, getString(R.string.achv_dog), false).setAvailable(true));
        this.mList.add(26, new AchievementBean(R.drawable.achv26, getString(R.string.achv_sleep), false));
        this.mList.add(27, new AchievementBean(R.drawable.achv27, getString(R.string.achv_unknown), false).setAvailable(true));
        this.mList.add(28, new AchievementBean(R.drawable.achv28, getString(R.string.achv_unknown), false).setAvailable(true));
        this.mList.add(29, new AchievementBean(R.drawable.achv32, getString(R.string.achv_bullet_time), false));
        this.mList.add(30, new AchievementBean(R.drawable.achv30, getString(R.string.achv_fortune_teller), false));
        this.mList.add(31, new AchievementBean(R.drawable.achv31, getString(R.string.achv_lucky_duck), false));
        this.mList.add(32, new AchievementBean(R.drawable.achv29, getString(R.string.achv_fashion_icon), false));
        this.mLifeTimeActivity.write(this.mBleDevice, ByteUtil.strToByteArray(BleRequestUtil.request(9)));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m65d("tag", "onMessageEvent: " + json);
        BleAchievementsResponseParse.achievements(json, new BleAchievementsResponseParse.Callback() { // from class: com.living.emo.fragment.AchievementsFragment.1
            @Override // com.living.emo.blebean.parse.BleAchievementsResponseParse.Callback
            public void response(List<Integer> list) {
                AchievementsFragment.this.listParse(list);
            }
        });
        ResultResponse objectFromData = ResultResponse.objectFromData(json);
        if (objectFromData != null && objectFromData.getData() != null && objectFromData.getType().equals(Constants.BLE_ANIM_REP)) {
            objectFromData.getData().getResult();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void listParse(List<Integer> list) {
        ArrayList arrayList = new ArrayList();
        for (Integer num : list) {
            if (this.mSelctList.get(num.intValue()) != null) {
                LogUtil.m64e("TAG", "listParse mSelctList: " + this.mSelctList.get(num.intValue()));
                this.mList.set(num.intValue(), this.mSelctList.get(num.intValue()));
            }
        }
        this.mList.remove(0);
        this.mLifeTimeAdapter.setDatas(this.mList);
        LogUtil.m65d("TAG", "listParse: achievment size:" + arrayList.size());
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.dismiss();
        }
        EventBus.getDefault().unregister(this);
    }
}
