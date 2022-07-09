package com.living.emo.bean;

import com.livingai.emopet.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class DataBean {
    public Integer imageRes;
    public String imageUrl;
    public Integer title;
    public int viewType;

    public DataBean(Integer num, Integer num2, int i) {
        this.imageRes = num;
        this.title = num2;
        this.viewType = i;
    }

    public DataBean(String str, Integer num, int i) {
        this.imageUrl = str;
        this.title = num;
        this.viewType = i;
    }

    public static List<DataBean> getData() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new DataBean(Integer.valueOf((int) R.drawable.pic_angry), Integer.valueOf((int) R.drawable.txt_angry), 2));
        arrayList.add(new DataBean(Integer.valueOf((int) R.drawable.pic_tap), Integer.valueOf((int) R.drawable.txt_tap), 5));
        arrayList.add(new DataBean(Integer.valueOf((int) R.drawable.pic_dance), Integer.valueOf((int) R.drawable.txt_dance), 3));
        arrayList.add(new DataBean(Integer.valueOf((int) R.drawable.pic_ludo), Integer.valueOf((int) R.drawable.txt_ludo), 1));
        arrayList.add(new DataBean(Integer.valueOf((int) R.drawable.pic_drop), Integer.valueOf((int) R.drawable.txt_drop), 4));
        arrayList.add(new DataBean(Integer.valueOf((int) R.drawable.pic_hunt), Integer.valueOf((int) R.drawable.txt_hunt), 6));
        return arrayList;
    }
}
