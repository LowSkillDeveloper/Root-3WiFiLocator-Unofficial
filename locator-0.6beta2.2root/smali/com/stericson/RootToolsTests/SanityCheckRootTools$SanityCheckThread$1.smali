.class Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$1;
.super Lcom/stericson/RootTools/execution/JavaCommandCapture;
.source "SanityCheckRootTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;


# direct methods
.method varargs constructor <init>(Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;IZLandroid/content/Context;[Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$1;->this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;

    move-object v6, v0

    move v7, v2

    move v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/stericson/RootTools/execution/JavaCommandCapture;-><init>(IZLandroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commandOutput(ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 275
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/stericson/RootTools/execution/JavaCommandCapture;->commandOutput(ILjava/lang/String;)V

    .line 276
    move-object v3, v0

    iget-object v3, v3, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread$1;->this$1:Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->access$200(Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V

    .line 277
    return-void
.end method
