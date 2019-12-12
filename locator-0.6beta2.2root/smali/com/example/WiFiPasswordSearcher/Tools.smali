.class public Lcom/example/WiFiPasswordSearcher/Tools;
.super Ljava/lang/Object;
.source "Tools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/Tools$100000000;
    }
.end annotation


# static fields
.field public static END:Ljava/lang/Boolean;

.field public static outcommand:Ljava/lang/StringBuilder;


# direct methods
.method static final constructor <clinit>()V
    .locals 7

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v2, Lcom/example/WiFiPasswordSearcher/Tools;->outcommand:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    move v5, v2

    move-object v6, v3

    move-object v2, v6

    move v3, v5

    move-object v4, v6

    move v5, v3

    move-object v6, v4

    move-object v3, v6

    move v4, v5

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v2, Lcom/example/WiFiPasswordSearcher/Tools;->END:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rootCommand(ILjava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    move/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Boolean;

    move v14, v6

    move-object v15, v7

    move-object v6, v15

    move v7, v14

    move-object v8, v15

    move v14, v7

    move-object v15, v8

    move-object v7, v15

    move v8, v14

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v6, Lcom/example/WiFiPasswordSearcher/Tools;->END:Ljava/lang/Boolean;

    .line 20
    :try_start_0
    sget-object v6, Lcom/example/WiFiPasswordSearcher/Tools;->outcommand:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    sget-object v8, Lcom/example/WiFiPasswordSearcher/Tools;->outcommand:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 22
    :goto_0
    new-instance v6, Lcom/example/WiFiPasswordSearcher/Tools$100000000;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    invoke-direct {v7, v8, v9, v10}, Lcom/example/WiFiPasswordSearcher/Tools$100000000;-><init>(IZ[Ljava/lang/String;)V

    move-object v3, v6

    .line 42
    const/4 v6, 0x1

    :try_start_1
    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/stericson/RootTools/exceptions/RootDeniedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v6

    .line 55
    :cond_0
    :goto_1
    const/16 v6, 0x32

    int-to-long v6, v6

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 52
    :goto_2
    sget-object v6, Lcom/example/WiFiPasswordSearcher/Tools;->END:Ljava/lang/Boolean;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    .line 20
    :catch_0
    move-exception v6

    move-object v3, v6

    goto :goto_0

    .line 42
    :catch_1
    move-exception v6

    move-object v4, v6

    goto :goto_1

    :catch_2
    move-exception v6

    move-object v4, v6

    goto :goto_1

    :catch_3
    move-exception v6

    move-object v4, v6

    goto :goto_1

    .line 55
    :catch_4
    move-exception v6

    move-object v4, v6

    goto :goto_2
.end method
