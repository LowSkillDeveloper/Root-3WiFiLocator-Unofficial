.class Lcom/stericson/RootTools/internal/RootToolsInternalMethods$2;
.super Lcom/stericson/RootTools/execution/CommandCapture;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->findBinary(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

.field final synthetic val$binaryName:Ljava/lang/String;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 545
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$2;->this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$2;->val$binaryName:Ljava/lang/String;

    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$2;->val$list:Ljava/util/List;

    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$2;->val$path:Ljava/lang/String;

    move-object v8, v0

    move v9, v2

    move v10, v3

    move-object v11, v4

    invoke-direct {v8, v9, v10, v11}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commandOutput(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 548
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v2

    const-string v4, "File: "

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$2;->val$binaryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 549
    move-object v3, v0

    iget-object v3, v3, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$2;->val$list:Ljava/util/List;

    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$2;->val$path:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$2;->val$binaryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was found here: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$2;->val$path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 554
    :cond_0
    move-object v3, v2

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 555
    return-void
.end method
