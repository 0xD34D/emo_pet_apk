package com.living.emo.fragment;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.gson.Gson;
import com.living.emo.adapter.NotificationsAdapter;
import com.living.emo.bean.Notice;
import com.living.emo.bean.domain.Article;
import com.living.emo.interfaces.IResultContrlView;
import com.living.emo.presenter.domain.NoticesPresenterImpl;
import com.living.emo.util.LogUtil;
import com.living.emo.util.NoticeCacheContent;
import com.living.emo.util.NoticeSharedPreferences;
import com.living.emo.util.NoticesBean;
import com.living.emo.view.WaitDialogView;
import com.livingai.emopet.R;
import java.util.ArrayList;
import java.util.List;
import p005cn.bingoogolapple.badgeview.BGABadgeRadioButton;
import p005cn.bingoogolapple.baseadapter.BGAOnItemChildClickListener;
/* loaded from: classes.dex */
public class NotificationsFragment extends AbstractBaseFragment {
    private RecyclerView mArticleTitle;
    public BGABadgeRadioButton[] mBGABadgeRadioButtons;
    private List<Notice.DataBean.ArticleBean> mData;
    public BGABadgeRadioButton mEvents;
    private List<Notice.DataBean.ArticleBean> mEventsData;
    private Notice mNotice;
    private NoticeSharedPreferences mNoticeSharedPreferences;
    public BGABadgeRadioButton mNotices;
    private List<Notice.DataBean.ArticleBean> mNoticesData;
    private NotificationsAdapter mNotificationsAdapter;
    private RadioGroup mRadiobox;
    public BGABadgeRadioButton mRecommends;
    private List<Notice.DataBean.ArticleBean> mRecommendsData;
    public BGABadgeRadioButton mUpdates;
    private List<Notice.DataBean.ArticleBean> mUpdatesData;
    private LinearLayout mWebBox;
    private WebView mWebView;
    private int radioCheckedIndex = 0;
    private String HTML = "<!doctype html><html lang=\"en\"><head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\"><meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\"><title></title></head><style>body {margin:0;padding:0; background:transparent;}#main{position: absolute;top:0;left:0;width:100%;height:100%;}</style><body><div id=\"main\">{{content}}</div></body></html>";
    private NoticeCacheContent mNoticeCacheContent = NoticeCacheContent.getInstance();

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected int loadRootViewResId() {
        return R.layout.fragment_notice;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        this.mNoticeSharedPreferences = NoticeSharedPreferences.getInstance(requireContext());
        initViews(view);
        initEvents();
        initDatas();
    }

    private void initDatas() {
        this.mBGABadgeRadioButtons = new BGABadgeRadioButton[]{this.mNotices, this.mUpdates, this.mEvents, this.mRecommends};
        for (int i = 0; i < 4; i++) {
            if (this.mNotice.getData().get(i).isHasnew()) {
                this.mBGABadgeRadioButtons[i].showTextBadge("NEW");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setData(List<Notice.DataBean.ArticleBean> list) {
        List<Notice.DataBean.ArticleBean> list2 = this.mData;
        if (list2 != null) {
            list2.clear();
            this.mData.addAll(list);
            return;
        }
        ArrayList arrayList = new ArrayList();
        this.mData = arrayList;
        arrayList.addAll(list);
    }

    private void initEvents() {
        this.mRadiobox.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.living.emo.fragment.NotificationsFragment.1
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup, int i) {
                LogUtil.m64e("TAG", "onCheckedChanged: " + i);
                int i2 = 0;
                switch (i) {
                    case R.id.nf_events /* 2131296790 */:
                        NotificationsFragment.this.radioCheckedIndex = 2;
                        NotificationsFragment notificationsFragment = NotificationsFragment.this;
                        notificationsFragment.setData(notificationsFragment.mEventsData);
                        if (NotificationsFragment.this.mEventsData.size() != 0) {
                            NotificationsFragment notificationsFragment2 = NotificationsFragment.this;
                            notificationsFragment2.getArticle(((Notice.DataBean.ArticleBean) notificationsFragment2.mEventsData.get(0)).getId());
                            break;
                        }
                        break;
                    case R.id.nf_notices /* 2131296791 */:
                        NotificationsFragment.this.radioCheckedIndex = 0;
                        NotificationsFragment notificationsFragment3 = NotificationsFragment.this;
                        notificationsFragment3.setData(notificationsFragment3.mNoticesData);
                        if (NotificationsFragment.this.mNoticesData.size() != 0) {
                            NotificationsFragment notificationsFragment4 = NotificationsFragment.this;
                            notificationsFragment4.getArticle(((Notice.DataBean.ArticleBean) notificationsFragment4.mNoticesData.get(0)).getId());
                            break;
                        }
                        break;
                    case R.id.nf_recommends /* 2131296792 */:
                        NotificationsFragment.this.radioCheckedIndex = 3;
                        NotificationsFragment notificationsFragment5 = NotificationsFragment.this;
                        notificationsFragment5.setData(notificationsFragment5.mRecommendsData);
                        if (NotificationsFragment.this.mRecommendsData.size() != 0) {
                            NotificationsFragment notificationsFragment6 = NotificationsFragment.this;
                            notificationsFragment6.getArticle(((Notice.DataBean.ArticleBean) notificationsFragment6.mRecommendsData.get(0)).getId());
                            break;
                        }
                        break;
                    case R.id.nf_updates /* 2131296793 */:
                        NotificationsFragment.this.radioCheckedIndex = 1;
                        NotificationsFragment notificationsFragment7 = NotificationsFragment.this;
                        notificationsFragment7.setData(notificationsFragment7.mUpdatesData);
                        if (NotificationsFragment.this.mUpdatesData.size() != 0) {
                            NotificationsFragment notificationsFragment8 = NotificationsFragment.this;
                            notificationsFragment8.getArticle(((Notice.DataBean.ArticleBean) notificationsFragment8.mUpdatesData.get(0)).getId());
                            break;
                        }
                        break;
                }
                NotificationsFragment.this.mNotificationsAdapter.setCurrIndex(0);
                LogUtil.m64e("TAG", "onCheckedChanged:size " + NotificationsFragment.this.mData.size() + "  radioCheckedIndex:" + NotificationsFragment.this.radioCheckedIndex);
                LinearLayout linearLayout = NotificationsFragment.this.mWebBox;
                if (NotificationsFragment.this.mData.size() <= 0) {
                    i2 = 8;
                }
                linearLayout.setVisibility(i2);
                NotificationsFragment.this.mNotificationsAdapter.setData(NotificationsFragment.this.mData);
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
    }

    private void initViews(View view) {
        this.mRadiobox = (RadioGroup) view.findViewById(R.id.nf_Radio_box);
        BGABadgeRadioButton bGABadgeRadioButton = (BGABadgeRadioButton) view.findViewById(R.id.nf_notices);
        this.mNotices = bGABadgeRadioButton;
        bGABadgeRadioButton.setChecked(true);
        this.mUpdates = (BGABadgeRadioButton) view.findViewById(R.id.nf_updates);
        this.mEvents = (BGABadgeRadioButton) view.findViewById(R.id.nf_events);
        this.mRecommends = (BGABadgeRadioButton) view.findViewById(R.id.nf_recommends);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.recy_article_title);
        this.mArticleTitle = recyclerView;
        recyclerView.setOverScrollMode(2);
        this.mWebView = (WebView) view.findViewById(R.id.web_view);
        this.mWebBox = (LinearLayout) view.findViewById(R.id.noti_web_box);
        this.mWebView.setBackgroundColor(0);
        this.mWebView.setHorizontalScrollBarEnabled(false);
        this.mWebView.setVerticalScrollBarEnabled(false);
        WebSettings settings = this.mWebView.getSettings();
        settings.setMinimumFontSize(13);
        settings.setMinimumLogicalFontSize(13);
        this.mWebView.setWebViewClient(new WebViewClient() { // from class: com.living.emo.fragment.NotificationsFragment.2
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                return true;
            }
        });
        if (Build.VERSION.SDK_INT >= 19) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        this.mArticleTitle.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
        this.mNotificationsAdapter = new NotificationsAdapter(this.mArticleTitle);
        if (NoticesBean.getInstance().empty()) {
            this.mNotice = new Notice();
        } else {
            this.mNotice = NoticesBean.getInstance().getNotice();
        }
        this.mNoticesData = this.mNotice.getData().get(0).getArticle();
        this.mUpdatesData = this.mNotice.getData().get(1).getArticle();
        this.mEventsData = this.mNotice.getData().get(2).getArticle();
        this.mRecommendsData = this.mNotice.getData().get(3).getArticle();
        setData(this.mNoticesData);
        this.mWebBox.setVisibility(this.mData.size() > 0 ? 0 : 8);
        this.mNotificationsAdapter.setData(this.mData);
        if (this.mData.size() != 0) {
            getArticle(this.mData.get(0).getId());
        }
        this.mNotificationsAdapter.setOnItemChildClickListener(new BGAOnItemChildClickListener() { // from class: com.living.emo.fragment.-$$Lambda$NotificationsFragment$qFU3w03oGlZGXsUV4nWeXx5YmbI
            @Override // p005cn.bingoogolapple.baseadapter.BGAOnItemChildClickListener
            public final void onItemChildClick(ViewGroup viewGroup, View view2, int i) {
                NotificationsFragment.this.lambda$initViews$0$NotificationsFragment(viewGroup, view2, i);
            }
        });
        this.mArticleTitle.setAdapter(this.mNotificationsAdapter);
    }

    public /* synthetic */ void lambda$initViews$0$NotificationsFragment(ViewGroup viewGroup, View view, int i) {
        LogUtil.m64e("TAG", "initViews: " + i);
        Notice.DataBean.ArticleBean articleBean = this.mNotificationsAdapter.getData().get(i);
        if (articleBean.isIsnew()) {
            articleBean.setIsnew(false);
            clearNew(this.mNotificationsAdapter.getData());
        }
        getArticle(articleBean.getId());
        this.mNotificationsAdapter.setCurrIndex(i);
        this.mNotificationsAdapter.notifyDataSetChanged();
    }

    private void showDialog() {
        WaitDialogView.show(requireContext(), "loading");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getArticle(final int i) {
        showDialog();
        String content = this.mNoticeCacheContent.getContent(i);
        if (content.equals("")) {
            try {
                NoticesPresenterImpl.getInstance().setOnIResultContrlView(new IResultContrlView<Article>() { // from class: com.living.emo.fragment.NotificationsFragment.3
                    public void success(Article article) {
                        WaitDialogView.dismiss();
                        LogUtil.m64e("TAG", "id :" + article.getId() + "  getArticle: " + article.toString());
                        NotificationsFragment.this.loadWebview(article.getContent());
                        NotificationsFragment.this.mNoticeCacheContent.setContext(i, article.getContent());
                    }

                    @Override // com.living.emo.interfaces.IResultContrlView
                    public void failed(Exception exc) {
                        WaitDialogView.dismiss();
                        LogUtil.m64e("TAG", "getArticle: " + exc.toString());
                    }
                });
                NoticesPresenterImpl.getInstance().getArticle(i);
            } catch (Throwable th) {
                WaitDialogView.dismiss();
                LogUtil.m64e("TAG", "getArticle: " + th.toString());
            }
        } else {
            WaitDialogView.dismiss();
            loadWebview(content);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.mNoticeCacheContent.save();
    }

    public void loadWebview(String str) {
        String str2;
        if (str.equals("")) {
            str2 = this.HTML.replace("{{content}}", "");
        } else {
            str2 = this.HTML.replace("{{content}}", str);
        }
        this.mWebView.loadDataWithBaseURL(null, str2, "text/html", "UTF-8", null);
    }

    public void clearNew(List<Notice.DataBean.ArticleBean> list) {
        int i = this.radioCheckedIndex;
        if (i == 0) {
            LogUtil.m64e("TAG", "clearNew: " + this.mNoticesData.size());
            this.mNoticesData.clear();
            this.mNoticesData.addAll(list);
            this.mNotice.getData().get(0).setArticle(this.mNoticesData);
        } else if (i == 1) {
            this.mUpdatesData.clear();
            this.mUpdatesData.addAll(list);
            this.mNotice.getData().get(1).setArticle(this.mUpdatesData);
        } else if (i == 2) {
            this.mEventsData.clear();
            this.mEventsData.addAll(list);
            this.mNotice.getData().get(2).setArticle(this.mEventsData);
        } else if (i == 3) {
            this.mRecommendsData.clear();
            this.mRecommendsData.addAll(list);
            this.mNotice.getData().get(3).setArticle(this.mRecommendsData);
        }
        int i2 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (!list.get(i3).isIsnew()) {
                i2++;
            }
        }
        if (i2 == list.size()) {
            this.mNotice.getData().get(this.radioCheckedIndex).setHasnew(false);
            this.mBGABadgeRadioButtons[this.radioCheckedIndex].hiddenBadge();
        }
        NoticesBean.getInstance().setNotice(this.mNotice);
        System.out.println(new Gson().toJson(this.mNotice));
        this.mNoticeSharedPreferences.setData(this.mNotice);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        WaitDialogView.dismiss();
    }
}
