package com.living.emo.fragment;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.os.Handler;
import android.view.View;
import android.widget.ImageButton;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.clj.fastble.data.BleDevice;
import com.living.emo.MyApplication;
import com.living.emo.activity.ToolLightActivity;
import com.living.emo.adapter.LightListAdapter;
import com.living.emo.bean.BleBean;
import com.living.emo.blebean.parse.BleLightResponseParse;
import com.living.emo.blebean.parse.BleResultParse;
import com.living.emo.blebean.response.LightResponse;
import com.living.emo.blebean.util.BleJsonUtil;
import com.living.emo.blebean.util.BleRequestUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.LogUtil;
import com.living.emo.view.LightRename;
import com.living.emo.view.RecognitionDeleteView;
import com.livingai.emopet.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class LightFragment extends AbstractBaseFragment {
    private static final String TAG = "zxl::" + LightFragment.class.getSimpleName();
    private BleDevice mBleDevice;
    private Handler mHandler;
    @BindView(R.id.rec_light_list)
    RecyclerView mLightList;
    private LightListAdapter mLightListAdapter;
    private ProgressDialog mProgressDialog;
    @BindView(R.id.light_refresh)
    ImageButton mRefresh;
    private ToolLightActivity mToolActivity;
    @BindView(R.id.light_unbind_all)
    ImageButton mUnbind;
    ArrayList<LightResponse.DataBean.LightBean.StateBean> mData = null;
    private State currStatus = State.NONE;
    private Runnable timeOut = new Runnable() { // from class: com.living.emo.fragment.LightFragment.1
        @Override // java.lang.Runnable
        public void run() {
            LightFragment.this.mProgressDialog.dismiss();
            LightFragment.this.mToolActivity.write(LightFragment.this.mBleDevice, BleRequestUtil.light());
            LightFragment.this.reset();
            Toast.makeText(LightFragment.this.requireActivity(), "time out", 0).show();
        }
    };
    private String currState = null;
    private int currPosition = 0;
    private int currOnOff = 0;
    private String currRename = null;

    /* loaded from: classes.dex */
    private enum State {
        NONE,
        ONOFF,
        RENAME,
        UNBIND
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected int loadRootViewResId() {
        return R.layout.fragment_light;
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void initProgress() {
        LogUtil.m64e(TAG, "initProgress: ");
        ProgressDialog progressDialog = new ProgressDialog(requireActivity());
        this.mProgressDialog = progressDialog;
        progressDialog.setCancelable(false);
        this.mProgressDialog.setTitle("loading...");
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initView() {
        EventBus.getDefault().register(this);
        LogUtil.m64e(TAG, "initView: ");
        this.mToolActivity = (ToolLightActivity) requireActivity();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(MyApplication.getContext());
        linearLayoutManager.setOrientation(0);
        this.mLightList.setLayoutManager(linearLayoutManager);
        LightListAdapter lightListAdapter = new LightListAdapter(getActivity());
        this.mLightListAdapter = lightListAdapter;
        this.mLightList.setAdapter(lightListAdapter);
        this.mHandler = new Handler();
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initData() {
        this.mBleDevice = BleBean.getInstance().getBleDevice();
        this.mToolActivity.write(this.mBleDevice, BleRequestUtil.light());
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void initEvent() {
        LightListAdapter lightListAdapter = this.mLightListAdapter;
        if (lightListAdapter != null) {
            lightListAdapter.setOnCheckedChangeListener(new LightListAdapter.OnCheckedChangeListener() { // from class: com.living.emo.fragment.LightFragment.2
                @Override // com.living.emo.adapter.LightListAdapter.OnCheckedChangeListener
                public void setOnOffLight(int i) {
                    if (LightFragment.this.mData != null) {
                        LightFragment.this.currStatus = State.ONOFF;
                        LightFragment.this.mProgressDialog.show();
                        LightFragment.this.mHandler.postDelayed(LightFragment.this.timeOut, 6000L);
                        LightResponse.DataBean.LightBean.StateBean stateBean = LightFragment.this.mData.get(i);
                        int on = stateBean.getOn();
                        int i2 = 1;
                        if (on == 1) {
                            i2 = 0;
                        }
                        String lightOnOff = BleJsonUtil.lightOnOff(stateBean.getId(), i2);
                        stateBean.setOn(i2);
                        LightFragment.this.mToolActivity.write(LightFragment.this.mBleDevice, ByteUtil.strToByteArray(lightOnOff));
                        LightFragment.this.currState = "onOff";
                        LightFragment.this.currPosition = i;
                        LightFragment.this.currOnOff = on;
                    }
                }

                @Override // com.living.emo.adapter.LightListAdapter.OnCheckedChangeListener
                public void setRename(int i) {
                    LightFragment.this.askForName(i);
                }
            });
        }
        this.mRefresh.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$LightFragment$WJAyfPwgp2o-NgMX8E0I_YcWR5E
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightFragment.this.lambda$initEvent$0$LightFragment(view);
            }
        });
        this.mUnbind.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$LightFragment$7vEXD3ZnLGpwJhiKxywKh3BI4Io
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightFragment.this.lambda$initEvent$1$LightFragment(view);
            }
        });
    }

    public /* synthetic */ void lambda$initEvent$0$LightFragment(View view) {
        this.mToolActivity.write(this.mBleDevice, BleRequestUtil.light());
        reset();
    }

    public /* synthetic */ void lambda$initEvent$1$LightFragment(View view) {
        this.mUnbind.setClickable(false);
        RecognitionDeleteView.showDialog(requireContext(), R.layout.dialog_light_unbind_all, R.id.dialog_light_cancel, R.id.dialog_light_ok, new RecognitionDeleteView.OnClickListener() { // from class: com.living.emo.fragment.LightFragment.3
            @Override // com.living.emo.view.RecognitionDeleteView.OnClickListener
            public void onCancel(Dialog dialog) {
                LightFragment.this.mUnbind.setClickable(true);
            }

            @Override // com.living.emo.view.RecognitionDeleteView.OnClickListener
            public void onOk(Dialog dialog) {
                LightFragment.this.currStatus = State.UNBIND;
                LightFragment.this.mToolActivity.write(LightFragment.this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.lightUnbindAll()));
                dialog.dismiss();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void askForName(final int i) {
        LightRename lightRename = new LightRename();
        lightRename.setName(this.mData.get(i).getName());
        lightRename.setDialogClickListener(new LightRename.onDialogClickListener() { // from class: com.living.emo.fragment.LightFragment.4
            @Override // com.living.emo.view.LightRename.onDialogClickListener
            public void onCancelClick(Dialog dialog) {
                dialog.dismiss();
            }

            @Override // com.living.emo.view.LightRename.onDialogClickListener
            public void onOkClick(Dialog dialog, String str) {
                if (LightFragment.this.mData != null) {
                    LightFragment.this.currStatus = State.RENAME;
                    LightFragment.this.mProgressDialog.show();
                    LightFragment.this.mHandler.postDelayed(LightFragment.this.timeOut, 6000L);
                    LightResponse.DataBean.LightBean.StateBean stateBean = LightFragment.this.mData.get(i);
                    String name = stateBean.getName();
                    String lightRename2 = BleJsonUtil.lightRename(stateBean.getId(), str);
                    stateBean.setName(str);
                    LightFragment.this.mToolActivity.write(LightFragment.this.mBleDevice, ByteUtil.strToByteArray(lightRename2));
                    LightFragment.this.currState = "rename";
                    LightFragment.this.currPosition = i;
                    LightFragment.this.currRename = name;
                }
                dialog.dismiss();
            }
        });
        lightRename.show(getChildFragmentManager(), "light");
    }

    public static boolean stringFilter(String str) throws PatternSyntaxException {
        return Pattern.matches("^[a-zA-Z0-9 ]+$", str);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onJsonEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m63i("JsonEvent:LightFragment", "emo->app ble data:" + json);
        BleLightResponseParse.light(json, new BleLightResponseParse.Callback() { // from class: com.living.emo.fragment.LightFragment.5
            @Override // com.living.emo.blebean.parse.BleLightResponseParse.Callback
            public void response(List<LightResponse.DataBean.LightBean.StateBean> list) {
                LightFragment.this.setData(list);
            }
        });
        BleResultParse.light(json, new BleResultParse.Callback() { // from class: com.living.emo.fragment.LightFragment.6
            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void success() {
                if (LightFragment.this.currStatus != State.UNBIND) {
                    LightFragment.this.currState = null;
                    LightFragment.this.currPosition = 0;
                    LightFragment.this.currRename = null;
                    LightFragment.this.currOnOff = 0;
                    LightFragment.this.mLightListAdapter.setLightData(LightFragment.this.mData);
                    LightFragment.this.mProgressDialog.dismiss();
                    LightFragment.this.mHandler.removeCallbacks(LightFragment.this.timeOut);
                    Toast.makeText(LightFragment.this.mToolActivity, "Operation successful", 0).show();
                    return;
                }
                LightFragment.this.mToolActivity.write(LightFragment.this.mBleDevice, BleRequestUtil.light());
                LightFragment.this.reset();
            }

            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void fail() {
                if (LightFragment.this.currStatus != State.UNBIND) {
                    if (LightFragment.this.currState != null && LightFragment.this.currState.equals("rename")) {
                        LightFragment.this.mData.get(LightFragment.this.currPosition).setName(LightFragment.this.currRename);
                    } else if (LightFragment.this.currState != null && LightFragment.this.currState.equals("onOff")) {
                        LightFragment.this.mData.get(LightFragment.this.currPosition).setOn(LightFragment.this.currOnOff);
                    }
                    LightFragment.this.currState = null;
                    LightFragment.this.currPosition = 0;
                    LightFragment.this.currRename = null;
                    LightFragment.this.currOnOff = 0;
                    LightFragment.this.mProgressDialog.dismiss();
                    LightFragment.this.mHandler.removeCallbacks(LightFragment.this.timeOut);
                    LightFragment.this.mToolActivity.write(LightFragment.this.mBleDevice, BleRequestUtil.light());
                    LightFragment.this.reset();
                    Toast.makeText(LightFragment.this.mToolActivity, "operation failed", 0).show();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setData(List<LightResponse.DataBean.LightBean.StateBean> list) {
        if (list.size() != 0) {
            if (this.mData == null) {
                ArrayList<LightResponse.DataBean.LightBean.StateBean> arrayList = new ArrayList<>();
                this.mData = arrayList;
                arrayList.addAll(list);
            } else if (list.size() == 1) {
                Iterator<LightResponse.DataBean.LightBean.StateBean> it = this.mData.iterator();
                while (it.hasNext()) {
                    LightResponse.DataBean.LightBean.StateBean next = it.next();
                    if (next.getId() == list.get(0).getId()) {
                        if (list.get(0).getConnected() == 0) {
                            this.mData.remove(next);
                        } else {
                            next.setHsl(list.get(0).getHsl());
                            next.setName(list.get(0).getName());
                            next.setOn(list.get(0).getOn());
                        }
                    }
                }
            }
            this.mLightListAdapter.setLightData(this.mData);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
        if (this.mLightListAdapter != null) {
            this.mLightListAdapter = null;
        }
        reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reset() {
        if (this.mData != null) {
            this.mData = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.fragment.AbstractBaseFragment
    public void release() {
        super.release();
        ProgressDialog progressDialog = this.mProgressDialog;
        if (progressDialog != null) {
            progressDialog.cancel();
        }
    }
}
