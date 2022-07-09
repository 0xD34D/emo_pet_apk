package kotlin.p007io;

import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FileTreeWalk.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0007"}, m35d2 = {"walk", "Lkotlin/io/FileTreeWalk;", "Ljava/io/File;", "direction", "Lkotlin/io/FileWalkDirection;", "walkBottomUp", "walkTopDown", "kotlin-stdlib"}, m34k = 5, m33mv = {1, 1, 13}, m31xi = 1, m30xs = "kotlin/io/FilesKt")
/* renamed from: kotlin.io.FilesKt__FileTreeWalkKt */
/* loaded from: classes.dex */
class FilesKt__FileTreeWalkKt extends FilesKt__FileReadWriteKt {
    public static /* synthetic */ FileTreeWalk walk$default(File file, FileWalkDirection fileWalkDirection, int i, Object obj) {
        if ((i & 1) != 0) {
            fileWalkDirection = FileWalkDirection.TOP_DOWN;
        }
        return FilesKt.walk(file, fileWalkDirection);
    }

    public static final FileTreeWalk walk(File receiver$0, FileWalkDirection direction) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(direction, "direction");
        return new FileTreeWalk(receiver$0, direction);
    }

    public static final FileTreeWalk walkTopDown(File receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return FilesKt.walk(receiver$0, FileWalkDirection.TOP_DOWN);
    }

    public static final FileTreeWalk walkBottomUp(File receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return FilesKt.walk(receiver$0, FileWalkDirection.BOTTOM_UP);
    }
}
