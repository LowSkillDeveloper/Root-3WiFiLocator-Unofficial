.class Lcom/stericson/RootTools/internal/RootToolsInternalMethods$11;
.super Lcom/stericson/RootTools/execution/CommandCapture;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->isProcessRunning(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

.field final synthetic val$processName:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 1294
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$11;->this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$11;->val$processName:Ljava/lang/String;

    move-object v6, v0

    move v7, v2

    move v8, v3

    move-object v9, v4

    invoke-direct {v6, v7, v8, v9}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public output(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 1297
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$11;->val$processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1298
    const/4 v3, 0x1

    sput-boolean v3, Lcom/stericson/RootTools/internal/InternalVariables;->processRunning:Z

    .line 1300
    :cond_0
    return-void
.end method
