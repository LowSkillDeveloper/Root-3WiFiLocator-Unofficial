.class Lcom/stericson/RootTools/internal/RootToolsInternalMethods$10;
.super Lcom/stericson/RootTools/execution/CommandCapture;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

.field final synthetic val$box:Ljava/lang/String;

.field final synthetic val$util:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 1176
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$10;->this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$10;->val$box:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$10;->val$util:Ljava/lang/String;

    move-object v7, v0

    move v8, v2

    move v9, v3

    move-object v10, v4

    invoke-direct {v7, v8, v9, v10}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public output(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 1180
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$10;->val$box:Ljava/lang/String;

    const-string v4, "toolbox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1181
    move-object v3, v2

    const-string v4, "no such tool"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1182
    const/4 v3, 0x1

    sput-boolean v3, Lcom/stericson/RootTools/internal/InternalVariables;->found:Z

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$10;->val$box:Ljava/lang/String;

    const-string v4, "busybox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1186
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$10;->val$util:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1187
    const-string v3, "Found util!"

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1188
    const/4 v3, 0x1

    sput-boolean v3, Lcom/stericson/RootTools/internal/InternalVariables;->found:Z

    goto :goto_0
.end method
