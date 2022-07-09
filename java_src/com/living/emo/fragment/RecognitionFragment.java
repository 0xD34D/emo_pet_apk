package com.living.emo.fragment;

import android.app.Dialog;
import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.clj.fastble.data.BleDevice;
import com.hankcs.algorithm.AhoCorasickDoubleArrayTrie;
import com.living.emo.activity.RecognitionActivity;
import com.living.emo.adapter.RecognitionAdapter;
import com.living.emo.bean.BleBean;
import com.living.emo.bean.RecognitionBean;
import com.living.emo.blebean.response.ResultResponse;
import com.living.emo.blebean.util.BleJsonUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.model.Constants;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.LogUtil;
import com.living.emo.view.RecognitionDeleteView;
import com.living.emo.view.RecognitionNameView;
import com.living.emo.view.WaitDialogView;
import com.living.emo.view.WaitScanView;
import com.livingai.emopet.R;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.regex.Pattern;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class RecognitionFragment extends AbstractBaseFragment {
    RecognitionBean currRecog = null;
    private AhoCorasickDoubleArrayTrie<String> mAct;
    private RecognitionActivity mActivity;
    private BleDevice mBleDevice;
    @BindView(R.id.recog_fregment_delete)
    ImageButton mDelete;
    @BindView(R.id.recog_fregment_name)
    TextView mName;
    @BindView(R.id.recog_fregment_name_con)
    LinearLayout mNameCon;
    @BindView(R.id.recog_fregment_people_con)
    LinearLayout mPeopleCon;
    private RecognitionAdapter mRecognitionAdapter;
    @BindView(R.id.reco_recy_faces)
    RecyclerView mRecyFaces;
    @BindView(R.id.recog_fregment_rescan)
    ImageButton mRescan;

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected int loadRootViewResId() {
        return R.layout.fragment_recognition;
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void initEvent() {
        this.mDelete.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$RecognitionFragment$qXy0hY2ye5XlSsL03OwUH9juo_c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecognitionFragment.this.lambda$initEvent$0$RecognitionFragment(view);
            }
        });
        this.mNameCon.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$RecognitionFragment$wQ7cu-kQXOG_HDKnw9HEIq9f9cA
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecognitionFragment.this.lambda$initEvent$1$RecognitionFragment(view);
            }
        });
        this.mRescan.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$RecognitionFragment$sZk7brGGLEdWfOx2UkFEuwZGpV8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecognitionFragment.this.lambda$initEvent$2$RecognitionFragment(view);
            }
        });
    }

    public /* synthetic */ void lambda$initEvent$0$RecognitionFragment(View view) {
        RecognitionDeleteView.showDialog(getContext(), R.layout.recog_delete_dialog, R.id.recognition_delete_cancel, R.id.recognition_delete_ok, new RecognitionDeleteView.OnClickListener() { // from class: com.living.emo.fragment.RecognitionFragment.1
            @Override // com.living.emo.view.RecognitionDeleteView.OnClickListener
            public void onCancel(Dialog dialog) {
                RecognitionActivity.currState = RecognitionActivity.State.NONE;
                dialog.dismiss();
            }

            @Override // com.living.emo.view.RecognitionDeleteView.OnClickListener
            public void onOk(Dialog dialog) {
                if (RecognitionActivity.currState != RecognitionActivity.State.NONE) {
                    dialog.dismiss();
                    return;
                }
                if (RecognitionFragment.this.currRecog != null) {
                    RecognitionActivity.currState = RecognitionActivity.State.DEL;
                    RecognitionFragment.this.mActivity.write(RecognitionFragment.this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Recognition(2, RecognitionFragment.this.currRecog.getId())));
                }
                dialog.dismiss();
                WaitDialogView.show(RecognitionFragment.this.getContext(), "processing");
            }
        });
    }

    public /* synthetic */ void lambda$initEvent$1$RecognitionFragment(View view) {
        if (RecognitionActivity.currState == RecognitionActivity.State.NONE && this.currRecog != null) {
            RecognitionNameView recognitionNameView = new RecognitionNameView();
            recognitionNameView.setDialogClickListener(new RecognitionNameView.onDialogClickListener() { // from class: com.living.emo.fragment.RecognitionFragment.2
                @Override // com.living.emo.view.RecognitionNameView.onDialogClickListener
                public void onCancelClick(Dialog dialog) {
                    System.out.println("onCancelClick:");
                    RecognitionActivity.currState = RecognitionActivity.State.NONE;
                    dialog.dismiss();
                }

                @Override // com.living.emo.view.RecognitionNameView.onDialogClickListener
                public void onOkClick(Dialog dialog, String str) {
                    RecognitionActivity.currState = RecognitionActivity.State.RENAME;
                    System.out.println("onOkClick:");
                    if (str.length() <= 0) {
                        RecognitionFragment.this.mActivity.showToast("Name cannot be empty");
                    } else if (str.length() > 20) {
                        RecognitionFragment.this.mActivity.showToast("The name cannot exceed 20 bytes");
                    } else if (!Pattern.matches("^[a-zA-Z ]+$", str)) {
                        RecognitionFragment.this.mActivity.showToast("names can only be letters and spaces");
                    } else {
                        String id = RecognitionFragment.this.currRecog.getId();
                        PrintStream printStream = System.out;
                        printStream.println("id:" + id);
                        if (RecognitionFragment.this.shadowSensitive(str)) {
                            RecognitionFragment.this.mActivity.showToast("Sorry, you cannot enter such a name.");
                            return;
                        }
                        RecognitionFragment.this.mActivity.write(RecognitionFragment.this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Recognition(id, str)));
                        dialog.dismiss();
                    }
                }
            });
            recognitionNameView.show(getChildFragmentManager(), "name");
        }
    }

    public /* synthetic */ void lambda$initEvent$2$RecognitionFragment(View view) {
        if (RecognitionActivity.currState == RecognitionActivity.State.NONE && this.currRecog != null) {
            RecognitionActivity.currState = RecognitionActivity.State.RESCAN;
            this.mActivity.write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Recognition(1, this.currRecog.getId())));
            WaitScanView.show(getActivity());
        }
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initData() {
        TreeMap treeMap = new TreeMap();
        String[] stringArray = getActivity().getResources().getStringArray(R.array.sensitive);
        for (String str : stringArray) {
            treeMap.put(str, str);
        }
        AhoCorasickDoubleArrayTrie<String> ahoCorasickDoubleArrayTrie = new AhoCorasickDoubleArrayTrie<>();
        this.mAct = ahoCorasickDoubleArrayTrie;
        ahoCorasickDoubleArrayTrie.build(treeMap);
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    public void initView() {
        this.mPeopleCon.setVisibility(8);
        this.mActivity = (RecognitionActivity) getActivity();
        EventBus.getDefault().register(this);
        this.mBleDevice = BleBean.getInstance().getBleDevice();
        this.mRecyFaces.setLayoutManager(new GridLayoutManager(getContext(), 3));
        RecognitionAdapter recognitionAdapter = new RecognitionAdapter();
        this.mRecognitionAdapter = recognitionAdapter;
        recognitionAdapter.setOnItemClickListener(new RecognitionAdapter.onItemClickListener() { // from class: com.living.emo.fragment.RecognitionFragment.3
            @Override // com.living.emo.adapter.RecognitionAdapter.onItemClickListener
            public void addClick(int i) {
                PrintStream printStream = System.out;
                printStream.println("addClick:" + i);
                if (RecognitionActivity.currState == RecognitionActivity.State.NONE) {
                    if (i == 16) {
                        RecognitionFragment.this.mActivity.showToast("EMO can only remember 16 faces now.");
                        return;
                    }
                    RecognitionNameView recognitionNameView = new RecognitionNameView();
                    recognitionNameView.setDialogClickListener(new RecognitionNameView.onDialogClickListener() { // from class: com.living.emo.fragment.RecognitionFragment.3.1
                        @Override // com.living.emo.view.RecognitionNameView.onDialogClickListener
                        public void onCancelClick(Dialog dialog) {
                            System.out.println("onCancelClick:");
                            dialog.dismiss();
                            RecognitionActivity.currState = RecognitionActivity.State.NONE;
                        }

                        @Override // com.living.emo.view.RecognitionNameView.onDialogClickListener
                        public void onOkClick(Dialog dialog, String str) {
                            System.out.println("onOkClick:");
                            RecognitionActivity.currState = RecognitionActivity.State.ADD;
                            if (str.length() > 20) {
                                RecognitionFragment.this.mActivity.showToast("The name cannot exceed 20 bytes");
                            } else if (!Pattern.matches("^[a-zA-Z ]+$", str)) {
                                RecognitionFragment.this.mActivity.showToast("names can only be letters and spaces");
                            } else if (RecognitionFragment.this.shadowSensitive(str)) {
                                RecognitionFragment.this.mActivity.showToast("Sorry, you cannot enter such a name.");
                            } else {
                                RecognitionFragment.this.mActivity.write(RecognitionFragment.this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Recognition(str)));
                                WaitScanView.show(RecognitionFragment.this.getActivity());
                                dialog.dismiss();
                            }
                        }
                    });
                    recognitionNameView.show(RecognitionFragment.this.getChildFragmentManager(), "name");
                }
            }

            @Override // com.living.emo.adapter.RecognitionAdapter.onItemClickListener
            public void ViewClick(RecognitionBean recognitionBean) {
                RecognitionFragment.this.mPeopleCon.setVisibility(0);
                RecognitionFragment.this.currRecog = recognitionBean;
                if (recognitionBean.getName().length() >= 12) {
                    RecognitionFragment.this.mName.setTextSize(13.0f);
                } else {
                    RecognitionFragment.this.mName.setTextSize(14.0f);
                }
                RecognitionFragment.this.mName.setText(recognitionBean.getName());
            }
        });
        this.mRecyFaces.setAdapter(this.mRecognitionAdapter);
        RecognitionActivity.currState = RecognitionActivity.State.SYN;
        this.mActivity.write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.RecognitionSync()));
        WaitDialogView.show(getContext(), "Syncing data from EMO");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shadowSensitive(String str) {
        StringBuffer stringBuffer = new StringBuffer(str.toLowerCase());
        for (AhoCorasickDoubleArrayTrie.Hit<String> hit : this.mAct.parseText(stringBuffer)) {
            for (int i = hit.begin; i < hit.end; i++) {
                stringBuffer.deleteCharAt(i);
                stringBuffer.insert(i, "*");
            }
        }
        PrintStream printStream = System.out;
        printStream.println("stringBuffer:" + stringBuffer.toString());
        return stringBuffer.indexOf("*") != -1;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m63i("JsonEvent:ToolPhotoActivity", "emo->app ble json data:" + json);
        ResultResponse objectFromData = ResultResponse.objectFromData(json);
        if (objectFromData != null && objectFromData.getData() != null) {
            ResultResponse.DataBean data = objectFromData.getData();
            if (objectFromData.getType().equals(Constants.BLE_RECOGNITION_RSP)) {
                int result = data.getResult();
                int i = C15814.$SwitchMap$com$living$emo$activity$RecognitionActivity$State[RecognitionActivity.currState.ordinal()];
                if (i == 1 || i == 2 || i == 3) {
                    if (result == 0) {
                        this.mActivity.showToast("failed");
                        RecognitionActivity.currState = RecognitionActivity.State.NONE;
                        WaitDialogView.dismiss();
                    } else if (result == 1) {
                        WaitDialogView.show(getContext(), "Syncing data from EMO");
                        this.mActivity.showToast("success");
                        writeSYNC();
                        RecognitionActivity.currState = RecognitionActivity.State.SYN;
                    } else if (result == 2) {
                        this.mActivity.showToast("Face already exists");
                        RecognitionActivity.currState = RecognitionActivity.State.NONE;
                        WaitDialogView.dismiss();
                    } else if (result == 3) {
                        RecognitionActivity.currState = RecognitionActivity.State.NONE;
                        this.mActivity.showToast("ID does not exist");
                        WaitDialogView.dismiss();
                    }
                    this.mPeopleCon.setVisibility(8);
                } else if (i != 4) {
                    if (i == 5) {
                        if (result == 0) {
                            this.mActivity.showToast("failed");
                        } else if (result == 1) {
                            this.mActivity.showToast("success");
                        } else if (result == 2) {
                            this.mActivity.showToast("Face already exists");
                        } else if (result == 3) {
                            this.mActivity.showToast("ID does not exist");
                        }
                        RecognitionActivity.currState = RecognitionActivity.State.NONE;
                    }
                } else if (result == 0) {
                    this.mActivity.showToast("failed");
                    RecognitionActivity.currState = RecognitionActivity.State.NONE;
                    WaitDialogView.dismiss();
                } else if (result == 1) {
                    WaitDialogView.dismiss();
                    this.mActivity.showToast("success");
                    recognitionSYNC(data);
                    RecognitionActivity.currState = RecognitionActivity.State.NONE;
                    this.mPeopleCon.setVisibility(8);
                } else if (result == 2) {
                    WaitDialogView.dismiss();
                    this.mActivity.showToast("Face already exists");
                    RecognitionActivity.currState = RecognitionActivity.State.NONE;
                } else if (result == 3) {
                    WaitDialogView.dismiss();
                    RecognitionActivity.currState = RecognitionActivity.State.NONE;
                    this.mActivity.showToast("ID does not exist");
                }
                WaitScanView.dismiss();
            }
        }
    }

    /* renamed from: com.living.emo.fragment.RecognitionFragment$4 */
    /* loaded from: classes.dex */
    static /* synthetic */ class C15814 {
        static final /* synthetic */ int[] $SwitchMap$com$living$emo$activity$RecognitionActivity$State;

        static {
            int[] iArr = new int[RecognitionActivity.State.values().length];
            $SwitchMap$com$living$emo$activity$RecognitionActivity$State = iArr;
            try {
                iArr[RecognitionActivity.State.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$living$emo$activity$RecognitionActivity$State[RecognitionActivity.State.DEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$living$emo$activity$RecognitionActivity$State[RecognitionActivity.State.RENAME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$living$emo$activity$RecognitionActivity$State[RecognitionActivity.State.SYN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$living$emo$activity$RecognitionActivity$State[RecognitionActivity.State.RESCAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private void writeSYNC() {
        this.mActivity.write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.RecognitionSync()));
    }

    private void recognitionSYNC(ResultResponse.DataBean dataBean) {
        HashMap<String, String> faces = dataBean.getFaces();
        ArrayList<RecognitionBean> arrayList = new ArrayList<>();
        arrayList.clear();
        if (faces.size() != 0) {
            arrayList.add(new RecognitionBean("", ""));
            for (Map.Entry<String, String> entry : faces.entrySet()) {
                PrintStream printStream = System.out;
                printStream.println("key = " + entry.getKey() + ", value = " + entry.getValue());
                arrayList.add(new RecognitionBean(entry.getKey(), entry.getValue()));
            }
        } else {
            arrayList.add(new RecognitionBean("", ""));
        }
        this.mRecognitionAdapter.setData(arrayList);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        WaitScanView.dismiss();
        WaitDialogView.dismiss();
        EventBus.getDefault().unregister(this);
    }
}
