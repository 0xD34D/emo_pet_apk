package com.hankcs.algorithm;

import androidx.core.internal.view.SupportMenu;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
/* loaded from: classes.dex */
public class AhoCorasickDoubleArrayTrie<V> implements Serializable {
    protected int[] base;
    protected int[] check;
    protected int[] fail;

    /* renamed from: l */
    protected int[] f925l;
    protected int[][] output;
    protected int size;

    /* renamed from: v */
    protected V[] f926v;

    /* loaded from: classes.dex */
    public interface IHit<V> {
        void hit(int i, int i2, V v);
    }

    /* loaded from: classes.dex */
    public interface IHitCancellable<V> {
        boolean hit(int i, int i2, V v);
    }

    /* loaded from: classes.dex */
    public interface IHitFull<V> {
        void hit(int i, int i2, V v, int i3);
    }

    public List<Hit<V>> parseText(CharSequence charSequence) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 1;
        for (int i3 = 0; i3 < charSequence.length(); i3++) {
            i = getState(i, charSequence.charAt(i3));
            storeEmits(i2, i, arrayList);
            i2++;
        }
        return arrayList;
    }

    public void parseText(CharSequence charSequence, IHit<V> iHit) {
        int i = 1;
        int i2 = 0;
        for (int i3 = 0; i3 < charSequence.length(); i3++) {
            i2 = getState(i2, charSequence.charAt(i3));
            int[] iArr = this.output[i2];
            if (iArr != null) {
                for (int i4 : iArr) {
                    iHit.hit(i - this.f925l[i4], i, this.f926v[i4]);
                }
            }
            i++;
        }
    }

    public void parseText(CharSequence charSequence, IHitCancellable<V> iHitCancellable) {
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            int i3 = i + 1;
            i2 = getState(i2, charSequence.charAt(i));
            int[] iArr = this.output[i2];
            if (iArr != null) {
                for (int i4 : iArr) {
                    if (!iHitCancellable.hit(i3 - this.f925l[i4], i3, this.f926v[i4])) {
                        return;
                    }
                }
                continue;
            }
            i = i3;
        }
    }

    public void parseText(char[] cArr, IHit<V> iHit) {
        int i = 1;
        int i2 = 0;
        for (char c : cArr) {
            i2 = getState(i2, c);
            int[] iArr = this.output[i2];
            if (iArr != null) {
                for (int i3 : iArr) {
                    iHit.hit(i - this.f925l[i3], i, this.f926v[i3]);
                }
            }
            i++;
        }
    }

    public void parseText(char[] cArr, IHitFull<V> iHitFull) {
        int i = 1;
        int i2 = 0;
        for (char c : cArr) {
            i2 = getState(i2, c);
            int[] iArr = this.output[i2];
            if (iArr != null) {
                for (int i3 : iArr) {
                    iHitFull.hit(i - this.f925l[i3], i, this.f926v[i3], i3);
                }
            }
            i++;
        }
    }

    public boolean matches(String str) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            i = getState(i, str.charAt(i2));
            if (this.output[i] != null) {
                return true;
            }
        }
        return false;
    }

    public Hit<V> findFirst(String str) {
        int i = 1;
        int i2 = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            i2 = getState(i2, str.charAt(i3));
            int[] iArr = this.output[i2];
            if (iArr != null) {
                int i4 = iArr[0];
                return new Hit<>(i - this.f925l[i4], i, this.f926v[i4]);
            }
            i++;
        }
        return null;
    }

    public void save(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(this.base);
        objectOutputStream.writeObject(this.check);
        objectOutputStream.writeObject(this.fail);
        objectOutputStream.writeObject(this.output);
        objectOutputStream.writeObject(this.f925l);
        objectOutputStream.writeObject(this.f926v);
    }

    public void load(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.base = (int[]) objectInputStream.readObject();
        this.check = (int[]) objectInputStream.readObject();
        this.fail = (int[]) objectInputStream.readObject();
        this.output = (int[][]) objectInputStream.readObject();
        this.f925l = (int[]) objectInputStream.readObject();
        this.f926v = (V[]) ((Object[]) objectInputStream.readObject());
    }

    public V get(String str) {
        int exactMatchSearch = exactMatchSearch(str);
        if (exactMatchSearch >= 0) {
            return this.f926v[exactMatchSearch];
        }
        return null;
    }

    public boolean set(String str, V v) {
        int exactMatchSearch = exactMatchSearch(str);
        if (exactMatchSearch < 0) {
            return false;
        }
        this.f926v[exactMatchSearch] = v;
        return true;
    }

    public V get(int i) {
        return this.f926v[i];
    }

    /* loaded from: classes.dex */
    public static class Hit<V> {
        public final int begin;
        public final int end;
        public final V value;

        public Hit(int i, int i2, V v) {
            this.begin = i;
            this.end = i2;
            this.value = v;
        }

        public String toString() {
            return String.format("[%d:%d]=%s", Integer.valueOf(this.begin), Integer.valueOf(this.end), this.value);
        }
    }

    private int getState(int i, char c) {
        int transitionWithRoot = transitionWithRoot(i, c);
        while (transitionWithRoot == -1) {
            i = this.fail[i];
            transitionWithRoot = transitionWithRoot(i, c);
        }
        return transitionWithRoot;
    }

    private void storeEmits(int i, int i2, List<Hit<V>> list) {
        int[] iArr = this.output[i2];
        if (iArr != null) {
            for (int i3 : iArr) {
                list.add(new Hit<>(i - this.f925l[i3], i, this.f926v[i3]));
            }
        }
    }

    protected int transition(int i, char c) {
        int i2 = c + i + 1;
        if (i == this.check[i2]) {
            return this.base[i2];
        }
        return -1;
    }

    protected int transitionWithRoot(int i, char c) {
        int i2 = this.base[i];
        int i3 = c + i2 + 1;
        return i2 != this.check[i3] ? i == 0 ? 0 : -1 : i3;
    }

    public void build(Map<String, V> map) {
        new Builder().build(map);
    }

    public int exactMatchSearch(String str) {
        return exactMatchSearch(str, 0, 0, 0);
    }

    private int exactMatchSearch(String str, int i, int i2, int i3) {
        if (i2 <= 0) {
            i2 = str.length();
        }
        if (i3 <= 0) {
            i3 = 0;
        }
        return getMatched(i, i2, -1, str.toCharArray(), this.base[i3]);
    }

    private int getMatched(int i, int i2, int i3, char[] cArr, int i4) {
        while (i < i2) {
            int i5 = cArr[i] + i4 + 1;
            if (i4 != this.check[i5]) {
                return i3;
            }
            i4 = this.base[i5];
            i++;
        }
        return i4 == this.check[i4] ? (-this.base[i4]) - 1 : i3;
    }

    private int exactMatchSearch(char[] cArr, int i, int i2, int i3) {
        return getMatched(i, i2, -1, cArr, this.base[i3]);
    }

    public int size() {
        return this.f926v.length;
    }

    /* loaded from: classes.dex */
    private class Builder {
        private int allocSize;
        private int keySize;
        private int nextCheckPos;
        private int progress;
        private State rootState;
        private boolean[] used;

        private Builder() {
            this.rootState = new State();
        }

        public void build(Map<String, V> map) {
            AhoCorasickDoubleArrayTrie.this.f926v = (V[]) map.values().toArray();
            AhoCorasickDoubleArrayTrie ahoCorasickDoubleArrayTrie = AhoCorasickDoubleArrayTrie.this;
            ahoCorasickDoubleArrayTrie.f925l = new int[ahoCorasickDoubleArrayTrie.f926v.length];
            Set<String> keySet = map.keySet();
            addAllKeyword(keySet);
            buildDoubleArrayTrie(keySet.size());
            this.used = null;
            constructFailureStates();
            this.rootState = null;
            loseWeight();
        }

        private int fetch(State state, List<Map.Entry<Integer, State>> list) {
            if (state.isAcceptable()) {
                State state2 = new State(-(state.getDepth() + 1));
                state2.addEmit(state.getLargestValueId().intValue());
                list.add(new AbstractMap.SimpleEntry(0, state2));
            }
            for (Map.Entry<Character, State> entry : state.getSuccess().entrySet()) {
                list.add(new AbstractMap.SimpleEntry(Integer.valueOf(entry.getKey().charValue() + 1), entry.getValue()));
            }
            return list.size();
        }

        private void addKeyword(String str, int i) {
            State state = this.rootState;
            for (char c : str.toCharArray()) {
                state = state.addState(Character.valueOf(c));
            }
            state.addEmit(i);
            AhoCorasickDoubleArrayTrie.this.f925l[i] = str.length();
        }

        private void addAllKeyword(Collection<String> collection) {
            int i = 0;
            for (String str : collection) {
                i++;
                addKeyword(str, i);
            }
        }

        private void constructFailureStates() {
            AhoCorasickDoubleArrayTrie ahoCorasickDoubleArrayTrie = AhoCorasickDoubleArrayTrie.this;
            ahoCorasickDoubleArrayTrie.fail = new int[ahoCorasickDoubleArrayTrie.size + 1];
            AhoCorasickDoubleArrayTrie ahoCorasickDoubleArrayTrie2 = AhoCorasickDoubleArrayTrie.this;
            ahoCorasickDoubleArrayTrie2.output = new int[ahoCorasickDoubleArrayTrie2.size + 1];
            ArrayDeque arrayDeque = new ArrayDeque();
            for (State state : this.rootState.getStates()) {
                state.setFailure(this.rootState, AhoCorasickDoubleArrayTrie.this.fail);
                arrayDeque.add(state);
                constructOutput(state);
            }
            while (!arrayDeque.isEmpty()) {
                State state2 = (State) arrayDeque.remove();
                for (Character ch : state2.getTransitions()) {
                    State nextState = state2.nextState(ch);
                    arrayDeque.add(nextState);
                    State failure = state2.failure();
                    while (failure.nextState(ch) == null) {
                        failure = failure.failure();
                    }
                    State nextState2 = failure.nextState(ch);
                    nextState.setFailure(nextState2, AhoCorasickDoubleArrayTrie.this.fail);
                    nextState.addEmit(nextState2.emit());
                    constructOutput(nextState);
                }
            }
        }

        private void constructOutput(State state) {
            Collection<Integer> emit = state.emit();
            if (!(emit == null || emit.size() == 0)) {
                int size = emit.size();
                int[] iArr = new int[size];
                Iterator<Integer> it = emit.iterator();
                for (int i = 0; i < size; i++) {
                    iArr[i] = it.next().intValue();
                }
                AhoCorasickDoubleArrayTrie.this.output[state.getIndex()] = iArr;
            }
        }

        private void buildDoubleArrayTrie(int i) {
            this.progress = 0;
            this.keySize = i;
            resize(2097152);
            AhoCorasickDoubleArrayTrie.this.base[0] = 1;
            this.nextCheckPos = 0;
            State state = this.rootState;
            ArrayList arrayList = new ArrayList(state.getSuccess().entrySet().size());
            fetch(state, arrayList);
            if (!arrayList.isEmpty()) {
                insert(arrayList);
            }
        }

        private int resize(int i) {
            int[] iArr = new int[i];
            int[] iArr2 = new int[i];
            boolean[] zArr = new boolean[i];
            if (this.allocSize > 0) {
                System.arraycopy(AhoCorasickDoubleArrayTrie.this.base, 0, iArr, 0, this.allocSize);
                System.arraycopy(AhoCorasickDoubleArrayTrie.this.check, 0, iArr2, 0, this.allocSize);
                System.arraycopy(this.used, 0, zArr, 0, this.allocSize);
            }
            AhoCorasickDoubleArrayTrie.this.base = iArr;
            AhoCorasickDoubleArrayTrie.this.check = iArr2;
            this.used = zArr;
            this.allocSize = i;
            return i;
        }

        private void insert(List<Map.Entry<Integer, State>> list) {
            ArrayDeque arrayDeque = new ArrayDeque();
            arrayDeque.add(new AbstractMap.SimpleEntry(null, list));
            while (!arrayDeque.isEmpty()) {
                insert(arrayDeque);
            }
        }

        private void insert(Queue<Map.Entry<Integer, List<Map.Entry<Integer, State>>>> queue) {
            int intValue;
            Map.Entry<Integer, List<Map.Entry<Integer, State>>> remove = queue.remove();
            List<Map.Entry<Integer, State>> value = remove.getValue();
            int i = 1;
            int max = Math.max(value.get(0).getKey().intValue() + 1, this.nextCheckPos) - 1;
            if (this.allocSize <= max) {
                resize(max + 1);
            }
            int i2 = 0;
            int i3 = 0;
            loop0: while (true) {
                max += i;
                if (this.allocSize <= max) {
                    resize(max + 1);
                }
                if (AhoCorasickDoubleArrayTrie.this.check[max] != 0) {
                    i3++;
                } else {
                    if (i2 == 0) {
                        this.nextCheckPos = max;
                        i2 = i;
                    }
                    intValue = max - value.get(0).getKey().intValue();
                    if (this.allocSize <= value.get(value.size() - i).getKey().intValue() + intValue) {
                        int i4 = this.keySize;
                        int i5 = this.progress;
                        i2 = i2;
                        double d = 1.05d;
                        if (1.05d <= (i4 * 1.0d) / (i5 + 1)) {
                            d = (i4 * 1.0d) / (i5 + 1);
                        }
                        resize((int) (this.allocSize * d));
                    } else {
                        i2 = i2;
                    }
                    if (!this.used[intValue]) {
                        for (int i6 = 1; i6 < value.size(); i6++) {
                            if (AhoCorasickDoubleArrayTrie.this.check[value.get(i6).getKey().intValue() + intValue] == 0) {
                            }
                        }
                        break loop0;
                    }
                    i = 1;
                }
            }
            if ((i3 * 1.0d) / ((max - this.nextCheckPos) + 1) >= 0.95d) {
                this.nextCheckPos = max;
            }
            this.used[intValue] = true;
            AhoCorasickDoubleArrayTrie ahoCorasickDoubleArrayTrie = AhoCorasickDoubleArrayTrie.this;
            ahoCorasickDoubleArrayTrie.size = ahoCorasickDoubleArrayTrie.size > (value.get(value.size() - 1).getKey().intValue() + intValue) + 1 ? AhoCorasickDoubleArrayTrie.this.size : value.get(value.size() - 1).getKey().intValue() + intValue + 1;
            for (Map.Entry<Integer, State> entry : value) {
                AhoCorasickDoubleArrayTrie.this.check[entry.getKey().intValue() + intValue] = intValue;
            }
            for (Map.Entry<Integer, State> entry2 : value) {
                ArrayList arrayList = new ArrayList(entry2.getValue().getSuccess().entrySet().size() + 1);
                if (fetch(entry2.getValue(), arrayList) == 0) {
                    AhoCorasickDoubleArrayTrie.this.base[entry2.getKey().intValue() + intValue] = (-entry2.getValue().getLargestValueId().intValue()) - 1;
                    this.progress++;
                } else {
                    queue.add(new AbstractMap.SimpleEntry(Integer.valueOf(entry2.getKey().intValue() + intValue), arrayList));
                }
                entry2.getValue().setIndex(entry2.getKey().intValue() + intValue);
            }
            Integer key = remove.getKey();
            if (key != null) {
                AhoCorasickDoubleArrayTrie.this.base[key.intValue()] = intValue;
            }
        }

        private void loseWeight() {
            int[] iArr = new int[AhoCorasickDoubleArrayTrie.this.size + SupportMenu.USER_MASK];
            System.arraycopy(AhoCorasickDoubleArrayTrie.this.base, 0, iArr, 0, AhoCorasickDoubleArrayTrie.this.size);
            AhoCorasickDoubleArrayTrie.this.base = iArr;
            int[] iArr2 = new int[AhoCorasickDoubleArrayTrie.this.size + SupportMenu.USER_MASK];
            System.arraycopy(AhoCorasickDoubleArrayTrie.this.check, 0, iArr2, 0, AhoCorasickDoubleArrayTrie.this.size);
            AhoCorasickDoubleArrayTrie.this.check = iArr2;
        }
    }
}
