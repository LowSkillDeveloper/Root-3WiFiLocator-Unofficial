.class public Lcom/stericson/RootTools/execution/JavaCommandCapture;
.super Lcom/stericson/RootTools/execution/Command;
.source "JavaCommandCapture.java"


# instance fields
.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method public varargs constructor <init>(IILandroid/content/Context;[Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 18
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    const/4 v8, 0x1

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/stericson/RootTools/execution/Command;-><init>(IIZLandroid/content/Context;[Ljava/lang/String;)V

    .line 7
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v6, v5, Lcom/stericson/RootTools/execution/JavaCommandCapture;->sb:Ljava/lang/StringBuilder;

    .line 19
    return-void
.end method

.method public varargs constructor <init>(ILandroid/content/Context;[Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 10
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/stericson/RootTools/execution/Command;-><init>(IZLandroid/content/Context;[Ljava/lang/String;)V

    .line 7
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v5, v4, Lcom/stericson/RootTools/execution/JavaCommandCapture;->sb:Ljava/lang/StringBuilder;

    .line 11
    return-void
.end method

.method public varargs constructor <init>(IZLandroid/content/Context;[Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 14
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    const/4 v8, 0x1

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/stericson/RootTools/execution/Command;-><init>(IZZLandroid/content/Context;[Ljava/lang/String;)V

    .line 7
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v6, v5, Lcom/stericson/RootTools/execution/JavaCommandCapture;->sb:Ljava/lang/StringBuilder;

    .line 15
    return-void
.end method


# virtual methods
.method public commandCompleted(II)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public commandOutput(ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 23
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/stericson/RootTools/execution/JavaCommandCapture;->sb:Ljava/lang/StringBuilder;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 24
    const-string v3, "Command"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public commandTerminated(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/execution/JavaCommandCapture;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
