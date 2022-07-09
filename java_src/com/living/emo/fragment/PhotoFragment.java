package com.living.emo.fragment;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.clj.fastble.data.BleDevice;
import com.living.emo.MyApplication;
import com.living.emo.activity.ToolPhotoActivity;
import com.living.emo.activity.UtilitiesActivity;
import com.living.emo.adapter.PhotoListAdapter;
import com.living.emo.bean.BleBean;
import com.living.emo.blebean.response.ResultResponse;
import com.living.emo.blebean.util.BleJsonUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.fragment.PhotoFragment;
import com.living.emo.model.Constants;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.ImgUtil;
import com.living.emo.util.LogUtil;
import com.living.emo.util.TcpServerUtil;
import com.living.emo.view.PhotoDialogView;
import com.living.emo.view.PreviewPicturePopWindow;
import com.living.emo.view.WaitDialogView;
import com.livingai.emopet.R;
import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.Arrays;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class PhotoFragment extends AbstractBaseFragment {
    private static final int REQUEST_CODE_OPEN_WIFI = 1;
    private static final String TAG = "PhotoFragment";
    private BleDevice mBleDevice;
    @BindView(R.id.photo_clear_image_btn)
    ImageButton mClear;
    private File mDeleteFile;
    private ToolPhotoActivity mPhotoActivity;
    private PhotoListAdapter mPhotoListAdapter;
    @BindView(R.id.photo_recy_view)
    RecyclerView mPhotoRecyView;
    private PreviewPicturePopWindow mPreviewPicturePopWindow;
    private File mRootDir;
    @BindView(R.id.photo_slide_show_image_btn)
    ImageButton mSlideShow;
    @BindView(R.id.photo_sync_image_btn)
    ImageButton mSync;
    private TcpServerUtil mTcpServerUtil;
    @BindView(R.id.photo_tips_tv)
    TextView mTextView;
    private WifiManager mWifiManager;
    private int port = 9090;
    private State currState = State.NONE;

    /* loaded from: classes.dex */
    enum State {
        NONE,
        DELETE,
        UPLOAD,
        CLEAR
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected int loadRootViewResId() {
        return R.layout.fragment_photo;
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initView() {
        EventBus.getDefault().register(this);
        TcpServerUtil tcpServerUtil = new TcpServerUtil();
        this.mTcpServerUtil = tcpServerUtil;
        tcpServerUtil.setServerNotifyMessageListener(new C15651());
        PreviewPicturePopWindow previewPicturePopWindow = new PreviewPicturePopWindow();
        this.mPreviewPicturePopWindow = previewPicturePopWindow;
        previewPicturePopWindow.setOnClickEventListener(new PreviewPicturePopWindow.OnClickEventListener() { // from class: com.living.emo.fragment.PhotoFragment.2
            @Override // com.living.emo.view.PreviewPicturePopWindow.OnClickEventListener
            public void onDelete(final File file) {
                PhotoFragment.this.mDeleteFile = file;
                PhotoDialogView.showDialog(PhotoFragment.this.getActivity(), R.layout.photo_delete_dialog, R.id.photo_delete_cancel, R.id.photo_delete_ok, new PhotoDialogView.OnClickListener() { // from class: com.living.emo.fragment.PhotoFragment.2.1
                    @Override // com.living.emo.view.PhotoDialogView.OnClickListener
                    public void onCancel(Dialog dialog) {
                    }

                    @Override // com.living.emo.view.PhotoDialogView.OnClickListener
                    public void onOk(Dialog dialog) {
                        LogUtil.m63i("tag", "this is delete");
                        PhotoFragment.this.mPhotoActivity.write(PhotoFragment.this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Photo("del", file.getName())));
                        PhotoFragment.this.currState = State.DELETE;
                        WaitDialogView.show(PhotoFragment.this.getContext(), "processing");
                        dialog.dismiss();
                    }
                });
            }

            @Override // com.living.emo.view.PreviewPicturePopWindow.OnClickEventListener
            public void onDownload(File file) {
                if (ImgUtil.saveImageToGallery(PhotoFragment.this.getContext(), file)) {
                    PhotoFragment.this.mPhotoActivity.showToast("save success");
                } else {
                    PhotoFragment.this.mPhotoActivity.showToast("save fail");
                }
                PhotoFragment.this.mPreviewPicturePopWindow.dismiss();
            }
        });
        this.mBleDevice = BleBean.getInstance().getBleDevice();
        this.mPhotoActivity = (ToolPhotoActivity) getActivity();
        this.mPhotoRecyView.setLayoutManager(new GridLayoutManager(getActivity(), 4));
        PhotoListAdapter photoListAdapter = new PhotoListAdapter();
        this.mPhotoListAdapter = photoListAdapter;
        photoListAdapter.setOnClickItemListener(new PhotoListAdapter.OnClickItemListener() { // from class: com.living.emo.fragment.-$$Lambda$PhotoFragment$2l-JLyG22_WTfbDJgsZ3pkyH0Vo
            @Override // com.living.emo.adapter.PhotoListAdapter.OnClickItemListener
            public final void onClickItem(File file) {
                PhotoFragment.this.lambda$initView$0$PhotoFragment(file);
            }
        });
        this.mPhotoRecyView.setAdapter(this.mPhotoListAdapter);
        this.mRootDir = MyApplication.getInstance().getRootDir();
    }

    /* renamed from: com.living.emo.fragment.PhotoFragment$1 */
    /* loaded from: classes.dex */
    class C15651 implements TcpServerUtil.ServerNotifyMessageListener {
        C15651() {
        }

        @Override // com.living.emo.util.TcpServerUtil.ServerNotifyMessageListener
        public void onSingleImage() {
            PhotoFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.living.emo.fragment.-$$Lambda$PhotoFragment$1$9CGN2R6Wjj64eX-5Yo7erc-5Z90
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoFragment.C15651.this.lambda$onSingleImage$0$PhotoFragment$1();
                }
            });
        }

        public /* synthetic */ void lambda$onSingleImage$0$PhotoFragment$1() {
            if (!PhotoFragment.this.isEmpty()) {
                PhotoFragment.this.mPhotoListAdapter.setData(PhotoFragment.this.getArrayListFile());
                PhotoFragment.this.mPhotoListAdapter.notifyDataSetChanged();
                PhotoFragment.this.mTextView.setVisibility(8);
                PhotoFragment.this.mPhotoRecyView.setVisibility(0);
            }
        }

        @Override // com.living.emo.util.TcpServerUtil.ServerNotifyMessageListener
        public void onFinish() {
            PhotoFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.living.emo.fragment.-$$Lambda$PhotoFragment$1$smpcQcHxBaBdQpftRIU6zbpL51g
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoFragment.C15651.this.lambda$onFinish$1$PhotoFragment$1();
                }
            });
        }

        public /* synthetic */ void lambda$onFinish$1$PhotoFragment$1() {
            if (!PhotoFragment.this.isEmpty()) {
                PhotoFragment.this.mPhotoListAdapter.setData(PhotoFragment.this.getArrayListFile());
                PhotoFragment.this.mPhotoListAdapter.notifyDataSetChanged();
                return;
            }
            PhotoFragment.this.mTextView.setText("It looks like EMO hasn't taken any photos yet, please ask him to take a few for you.");
            PhotoFragment.this.mPhotoRecyView.setVisibility(8);
            PhotoFragment.this.mTextView.setVisibility(0);
        }

        @Override // com.living.emo.util.TcpServerUtil.ServerNotifyMessageListener
        public void onServerStart() {
            PhotoFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.living.emo.fragment.-$$Lambda$PhotoFragment$1$HGLCSYXUzVKICImbJYWS5PzHZ88
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoFragment.C15651.this.lambda$onServerStart$3$PhotoFragment$1();
                }
            });
        }

        public /* synthetic */ void lambda$onServerStart$3$PhotoFragment$1() {
            new Handler().postDelayed(new Runnable() { // from class: com.living.emo.fragment.-$$Lambda$PhotoFragment$1$4EKQVfe3tyKTos4nmY1tRkHdn4g
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoFragment.C15651.this.lambda$null$2$PhotoFragment$1();
                }
            }, 1000L);
        }

        public /* synthetic */ void lambda$null$2$PhotoFragment$1() {
            PhotoFragment.this.mPhotoActivity.write(PhotoFragment.this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Photo("syn", PhotoFragment.this.getIp(), PhotoFragment.this.port)));
        }
    }

    public /* synthetic */ void lambda$initView$0$PhotoFragment(File file) {
        LogUtil.m63i("tag", "setOnClickItemListener file name:" + file.getName());
        this.mPhotoActivity.write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Photo("show", file.getName())));
        this.mPreviewPicturePopWindow.setData(file);
        this.mPreviewPicturePopWindow.showAsDropDown(getActivity().getWindow().getDecorView());
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void initEvent() {
        this.mSync.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$PhotoFragment$gpDvX6h-cobgLSSyl1CJMaaLUrU
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhotoFragment.this.lambda$initEvent$1$PhotoFragment(view);
            }
        });
        this.mSlideShow.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$PhotoFragment$lotB8aPlPwxMe2D31X5ujrd7B8g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhotoFragment.this.lambda$initEvent$2$PhotoFragment(view);
            }
        });
        this.mClear.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$PhotoFragment$8Ovts_NZgqRCmPxYzQzUu_JluJg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhotoFragment.this.lambda$initEvent$3$PhotoFragment(view);
            }
        });
    }

    public /* synthetic */ void lambda$initEvent$1$PhotoFragment(View view) {
        this.mSync.setEnabled(false);
        PhotoDialogView.showDialog(getActivity(), R.layout.photo_sync_dialog, R.id.photo_sync_cancel, R.id.photo_sync_start, new PhotoDialogView.OnClickListener() { // from class: com.living.emo.fragment.PhotoFragment.3
            @Override // com.living.emo.view.PhotoDialogView.OnClickListener
            public void onCancel(Dialog dialog) {
            }

            @Override // com.living.emo.view.PhotoDialogView.OnClickListener
            public void onOk(Dialog dialog) {
                if (!PhotoFragment.this.checkWifiIsOpen()) {
                    Toast.makeText(PhotoFragment.this.getContext(), "Please make sure that your mobile device and EMO have been connected to the same network.", 0).show();
                    dialog.dismiss();
                    return;
                }
                if (!PhotoFragment.this.mTcpServerUtil.isActive()) {
                    PhotoFragment.this.mTcpServerUtil.starServer(PhotoFragment.this.port);
                } else {
                    PhotoFragment.this.mPhotoActivity.write(PhotoFragment.this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Photo("syn", PhotoFragment.this.getIp(), PhotoFragment.this.port)));
                }
                PhotoFragment.this.currState = State.UPLOAD;
                LogUtil.m64e(PhotoFragment.TAG, "ip: " + PhotoFragment.this.getIp() + "port:" + PhotoFragment.this.port);
                dialog.dismiss();
                WaitDialogView.show(PhotoFragment.this.getContext(), "processing");
            }
        });
        this.mSync.setEnabled(true);
    }

    public /* synthetic */ void lambda$initEvent$2$PhotoFragment(View view) {
        this.mSlideShow.setEnabled(false);
        PhotoDialogView.showDialog(getActivity(), R.layout.photo_slide_show_dialog, R.id.photo_slide_show_cancel, R.id.photo_slide_show_start, new PhotoDialogView.OnClickListener() { // from class: com.living.emo.fragment.PhotoFragment.4
            @Override // com.living.emo.view.PhotoDialogView.OnClickListener
            public void onCancel(Dialog dialog) {
            }

            @Override // com.living.emo.view.PhotoDialogView.OnClickListener
            public void onOk(Dialog dialog) {
                PhotoFragment.this.mPhotoActivity.write(PhotoFragment.this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Photo("play")));
                dialog.dismiss();
                WaitDialogView.show(PhotoFragment.this.getContext(), "processing");
            }
        });
        this.mSlideShow.setEnabled(true);
    }

    public /* synthetic */ void lambda$initEvent$3$PhotoFragment(View view) {
        this.mClear.setEnabled(false);
        PhotoDialogView.showDialog(getActivity(), R.layout.photo_clear_dialog, R.id.photo_delete_cancel, R.id.photo_delete_ok, new PhotoDialogView.OnClickListener() { // from class: com.living.emo.fragment.PhotoFragment.5
            @Override // com.living.emo.view.PhotoDialogView.OnClickListener
            public void onCancel(Dialog dialog) {
            }

            @Override // com.living.emo.view.PhotoDialogView.OnClickListener
            public void onOk(Dialog dialog) {
                PhotoFragment.this.mPhotoActivity.write(PhotoFragment.this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Photo("clear")));
                PhotoFragment.this.currState = State.CLEAR;
                dialog.dismiss();
                WaitDialogView.show(PhotoFragment.this.getContext(), "processing");
            }
        });
        this.mClear.setEnabled(true);
    }

    public boolean isEmpty() {
        File[] listFile = listFile();
        return listFile == null || listFile.length == 0;
    }

    public void remove() {
        File[] listFile = listFile();
        if (listFile != null) {
            for (File file : listFile) {
                file.delete();
            }
        }
    }

    private File[] listFile() {
        File[] listFiles = this.mRootDir.listFiles(new FileFilter() { // from class: com.living.emo.fragment.PhotoFragment.6
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                return Arrays.asList("png", "jpg", "jpeg").contains(file.getName().substring(file.getName().lastIndexOf(".") + 1));
            }
        });
        if (listFiles == null) {
            return null;
        }
        return listFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<File> getArrayListFile() {
        ArrayList<File> arrayList = new ArrayList<>();
        File[] listFile = listFile();
        if (listFile == null) {
            return null;
        }
        arrayList.addAll(Arrays.asList(listFile));
        return arrayList;
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initData() {
        if (!isEmpty()) {
            this.mPhotoListAdapter.setData(getArrayListFile());
            this.mPhotoListAdapter.notifyDataSetChanged();
            return;
        }
        this.mTextView.setText("There are no photos in the app, please click the sync button on the left to sync the photos taken by EMO to the app.");
        this.mPhotoRecyView.setVisibility(8);
        this.mTextView.setVisibility(0);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
    }

    private void askWifiOpen() {
        new AlertDialog.Builder(getActivity()).setCancelable(false).setTitle("Tips").setMessage("WiFi needs to be turned on for the current function").setNegativeButton("cancel", new DialogInterface.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$PhotoFragment$Sa7QERten7hLayy5FIkPBAz5STI
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                PhotoFragment.this.lambda$askWifiOpen$4$PhotoFragment(dialogInterface, i);
            }
        }).setPositiveButton("Go to settings", new DialogInterface.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$PhotoFragment$ClFz1ixdaYqKMYaHQjV_ZOPTZeo
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                PhotoFragment.this.lambda$askWifiOpen$5$PhotoFragment(dialogInterface, i);
            }
        }).show();
    }

    public /* synthetic */ void lambda$askWifiOpen$4$PhotoFragment(DialogInterface dialogInterface, int i) {
        startActivity(new Intent(getActivity(), UtilitiesActivity.class));
        getActivity().finish();
    }

    public /* synthetic */ void lambda$askWifiOpen$5$PhotoFragment(DialogInterface dialogInterface, int i) {
        startActivityForResult(new Intent("android.settings.WIFI_SETTINGS"), 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkWifiIsOpen() {
        WifiManager wifiManager = (WifiManager) getActivity().getApplicationContext().getSystemService("wifi");
        this.mWifiManager = wifiManager;
        return wifiManager.isWifiEnabled();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m63i("JsonEvent:wifiSettingFragment", "emo->app ble json data:" + json);
        ResultResponse objectFromData = ResultResponse.objectFromData(json);
        if (objectFromData != null && objectFromData.getData() != null && objectFromData.getType().equals(Constants.BLE_PHOTO_RSP)) {
            int result = objectFromData.getData().getResult();
            if (result == 0) {
                this.mPhotoActivity.showToast("fail");
            } else if (result == 1) {
                this.mPhotoActivity.showToast("success");
                if (this.currState == State.DELETE) {
                    if (this.mDeleteFile.exists()) {
                        this.mDeleteFile.delete();
                    }
                    this.mPreviewPicturePopWindow.dismiss();
                    if (!isEmpty()) {
                        this.mPhotoListAdapter.setData(getArrayListFile());
                        this.mPhotoListAdapter.notifyDataSetChanged();
                    } else {
                        this.mTextView.setText("There are no photos in the app, please click the sync button on the left to sync the photos taken by EMO to the app.");
                        this.mPhotoRecyView.setVisibility(8);
                        this.mTextView.setVisibility(0);
                    }
                }
                if (this.currState == State.UPLOAD) {
                    if (!isEmpty()) {
                        this.mPhotoListAdapter.setData(getArrayListFile());
                        this.mPhotoListAdapter.notifyDataSetChanged();
                    } else {
                        this.mTextView.setText("It looks like EMO hasn't taken any photos yet, please ask him to take a few for you.");
                        this.mPhotoRecyView.setVisibility(8);
                        this.mTextView.setVisibility(0);
                    }
                }
                if (this.currState == State.CLEAR) {
                    remove();
                    this.mPhotoListAdapter.setData(new ArrayList<>());
                    this.mPhotoListAdapter.notifyDataSetChanged();
                    this.mPhotoRecyView.setVisibility(8);
                    this.mTextView.setText("There are no photos in the app, please click the sync button on the left to sync the photos taken by EMO to the app.");
                    this.mTextView.setVisibility(0);
                }
                this.currState = State.NONE;
            } else if (result == 2) {
                this.mPhotoActivity.showToast("Failed to connect to the server");
            } else if (result == 3) {
                this.mPhotoActivity.showToast("Failed to send photos");
            } else if (result == 4) {
                this.mPhotoActivity.showToast("Emo not networked");
            }
            WaitDialogView.dismiss();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        LogUtil.m65d("TAG", "onActivityResult: requestCode:" + i);
        LogUtil.m65d("TAG", "onActivityResult: resultCode" + i2);
        if (1 != i) {
            return;
        }
        if (!checkWifiIsOpen()) {
            startActivity(new Intent(getActivity(), UtilitiesActivity.class));
            getActivity().finish();
            return;
        }
        getIp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getIp() {
        WifiInfo connectionInfo = this.mWifiManager.getConnectionInfo();
        LogUtil.m65d("TAG", "getIp: " + connectionInfo.toString());
        int ipAddress = connectionInfo.getIpAddress();
        LogUtil.m65d("TAG", "getIp: ipAddress" + ipAddress);
        String intToIp = intToIp(ipAddress);
        LogUtil.m65d("TAG", "getIp: " + intToIp);
        return intToIp;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        TcpServerUtil tcpServerUtil = this.mTcpServerUtil;
        if (tcpServerUtil != null) {
            tcpServerUtil.stopServer();
            this.mTcpServerUtil = null;
        }
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        PreviewPicturePopWindow previewPicturePopWindow = this.mPreviewPicturePopWindow;
        if (previewPicturePopWindow != null) {
            previewPicturePopWindow.dismiss();
            this.mPreviewPicturePopWindow = null;
        }
        EventBus.getDefault().unregister(this);
    }

    private String intToIp(int i) {
        return (i & 255) + "." + ((i >> 8) & 255) + "." + ((i >> 16) & 255) + "." + ((i >> 24) & 255);
    }
}
