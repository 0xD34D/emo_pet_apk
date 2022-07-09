package com.living.emo.bean;

import com.livingai.emopet.R;
import java.util.HashMap;
/* loaded from: classes.dex */
public class StatusBean {
    private int rimg;
    private String text;

    public int getRimg() {
        return this.rimg;
    }

    public void setRimg(int i) {
        this.rimg = i;
    }

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
    }

    public StatusBean(int i, String str) {
        this.rimg = i;
        this.text = str;
    }

    public static HashMap<String, StatusBean> getData() {
        HashMap<String, StatusBean> hashMap = new HashMap<>();
        hashMap.put("10", new StatusBean(R.drawable.beh_shake, "Being shaken"));
        hashMap.put("20", new StatusBean(R.drawable.beh_petting, "Being petted"));
        hashMap.put("31", new StatusBean(R.drawable.beh_take, "Picked up"));
        hashMap.put("32", new StatusBean(R.drawable.beh_fall, "Falls down"));
        hashMap.put("33", new StatusBean(R.drawable.beh_charge, "Charging"));
        hashMap.put("40", new StatusBean(R.drawable.beh_cliff, "Emerging from cliff"));
        hashMap.put("51", new StatusBean(R.drawable.beh_headset, "Headset change"));
        hashMap.put("52", new StatusBean(R.drawable.beh_lowpower, "Low power"));
        hashMap.put("61", new StatusBean(R.drawable.beh_block, "Obstacles detected"));
        hashMap.put("62", new StatusBean(R.drawable.beh_knock, "Sound detected"));
        hashMap.put("90", new StatusBean(R.drawable.beh_game, "Playing games"));
        hashMap.put("100", new StatusBean(R.drawable.beh_specialgame, "Having fun"));
        hashMap.put("110", new StatusBean(R.drawable.beh_recording, "Listening"));
        hashMap.put("120", new StatusBean(R.drawable.beh_speak, "Speaking"));
        hashMap.put("130", new StatusBean(R.drawable.beh_music, "Playing music"));
        hashMap.put("140", new StatusBean(R.drawable.beh_dance, "Dancing"));
        hashMap.put("150", new StatusBean(R.drawable.beh_tools, "Being helpful"));
        hashMap.put("160", new StatusBean(R.drawable.beh_move, "Moving"));
        hashMap.put("180", new StatusBean(R.drawable.beh_questions, "Answering questions"));
        hashMap.put("190", new StatusBean(R.drawable.beh_target, "Moving to target"));
        hashMap.put("200", new StatusBean(R.drawable.beh_facing, "Looking at face"));
        hashMap.put("210", new StatusBean(R.drawable.beh_facing, "Looking at face"));
        hashMap.put("220", new StatusBean(R.drawable.beh_nonhuman, "Sees nonhuman"));
        hashMap.put("230", new StatusBean(R.drawable.beh_stay, "Staying"));
        hashMap.put("240", new StatusBean(R.drawable.beh_sleep, "Sleeping"));
        hashMap.put("270", new StatusBean(R.drawable.beh_lookaround, "Looking around"));
        hashMap.put("281", new StatusBean(R.drawable.beh_happy, "Being happy"));
        hashMap.put("282", new StatusBean(R.drawable.beh_sad, "Being sad"));
        hashMap.put("290", new StatusBean(R.drawable.beh_explore, "Exploring"));
        hashMap.put("300", new StatusBean(R.drawable.beh_search, "Searching"));
        hashMap.put("310", new StatusBean(R.drawable.beh_play, "Playing"));
        return hashMap;
    }
}
