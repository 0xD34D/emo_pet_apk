package com.hankcs.algorithm;

import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
/* loaded from: classes.dex */
public class State {
    protected final int depth;
    private Set<Integer> emits;
    private State failure;
    private int index;
    private Map<Character, State> success;

    public State() {
        this(0);
    }

    public State(int i) {
        this.failure = null;
        this.emits = null;
        this.success = new TreeMap();
        this.depth = i;
    }

    public int getDepth() {
        return this.depth;
    }

    public void addEmit(int i) {
        if (this.emits == null) {
            this.emits = new TreeSet(Collections.reverseOrder());
        }
        this.emits.add(Integer.valueOf(i));
    }

    public Integer getLargestValueId() {
        Set<Integer> set = this.emits;
        if (set == null || set.size() == 0) {
            return null;
        }
        return this.emits.iterator().next();
    }

    public void addEmit(Collection<Integer> collection) {
        for (Integer num : collection) {
            addEmit(num.intValue());
        }
    }

    public Collection<Integer> emit() {
        Set<Integer> set = this.emits;
        return set == null ? Collections.emptyList() : set;
    }

    public boolean isAcceptable() {
        return this.depth > 0 && this.emits != null;
    }

    public State failure() {
        return this.failure;
    }

    public void setFailure(State state, int[] iArr) {
        this.failure = state;
        iArr[this.index] = state.index;
    }

    private State nextState(Character ch, boolean z) {
        State state = this.success.get(ch);
        return (!z && state == null && this.depth == 0) ? this : state;
    }

    public State nextState(Character ch) {
        return nextState(ch, false);
    }

    public State nextStateIgnoreRootState(Character ch) {
        return nextState(ch, true);
    }

    public State addState(Character ch) {
        State nextStateIgnoreRootState = nextStateIgnoreRootState(ch);
        if (nextStateIgnoreRootState != null) {
            return nextStateIgnoreRootState;
        }
        State state = new State(this.depth + 1);
        this.success.put(ch, state);
        return state;
    }

    public Collection<State> getStates() {
        return this.success.values();
    }

    public Collection<Character> getTransitions() {
        return this.success.keySet();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("State{");
        sb.append("depth=");
        sb.append(this.depth);
        sb.append(", ID=");
        sb.append(this.index);
        sb.append(", emits=");
        sb.append(this.emits);
        sb.append(", success=");
        sb.append(this.success.keySet());
        sb.append(", failureID=");
        State state = this.failure;
        sb.append(state == null ? "-1" : Integer.valueOf(state.index));
        sb.append(", failure=");
        sb.append(this.failure);
        sb.append('}');
        return sb.toString();
    }

    public Map<Character, State> getSuccess() {
        return this.success;
    }

    public int getIndex() {
        return this.index;
    }

    public void setIndex(int i) {
        this.index = i;
    }
}
