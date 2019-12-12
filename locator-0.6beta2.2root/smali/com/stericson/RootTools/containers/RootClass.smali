.class public Lcom/stericson/RootTools/containers/RootClass;
.super Ljava/lang/Object;
.source "RootClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/RootTools/containers/RootClass$1;,
        Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder;,
        Lcom/stericson/RootTools/containers/RootClass$RootArgs;,
        Lcom/stericson/RootTools/containers/RootClass$Candidate;,
        Lcom/stericson/RootTools/containers/RootClass$READ_STATE;
    }
.end annotation


# static fields
.field static PATH_TO_DX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "/Users/Chris/Projects/android-sdk-macosx/build-tools/18.0.1/dx"

    sput-object v0, Lcom/stericson/RootTools/containers/RootClass;->PATH_TO_DX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v2, v6

    .line 36
    new-instance v6, Lcom/stericson/RootTools/containers/RootClass$RootArgs;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/stericson/RootTools/containers/RootClass$RootArgs;-><init>(Lcom/stericson/RootTools/containers/RootClass;)V

    move-object v3, v6

    .line 37
    move-object v6, v3

    move-object v7, v1

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, v6, Lcom/stericson/RootTools/containers/RootClass$RootArgs;->args:[Ljava/lang/String;

    .line 38
    move-object v6, v1

    const/4 v7, 0x1

    move-object v8, v3

    iget-object v8, v8, Lcom/stericson/RootTools/containers/RootClass$RootArgs;->args:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object v10, v1

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    move-object v6, v2

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v4, v6

    .line 40
    move-object v6, v4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const-class v10, Lcom/stericson/RootTools/containers/RootClass$RootArgs;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    move-object v5, v6

    .line 41
    move-object v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v3

    aput-object v10, v8, v9

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 42
    return-void
.end method

.method static displayError(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##ERR##"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "##"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 285
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    array-length v2, v2

    if-nez v2, :cond_0

    .line 286
    new-instance v2, Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder;-><init>()V

    .line 294
    :goto_0
    return-void

    .line 289
    :cond_0
    new-instance v2, Lcom/stericson/RootTools/containers/RootClass;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/stericson/RootTools/containers/RootClass;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 292
    move-object v2, v1

    invoke-static {v2}, Lcom/stericson/RootTools/containers/RootClass;->displayError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
