.class Lcom/stericson/RootTools/internal/RootToolsInternalMethods$1;
.super Lcom/stericson/RootTools/execution/CommandCapture;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->exists(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method varargs constructor <init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/util/List;)V
    .locals 10

    .prologue
    .line 400
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$1;->this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$1;->val$result:Ljava/util/List;

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
    .line 403
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v2

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 404
    move-object v3, v0

    iget-object v3, v3, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$1;->val$result:Ljava/util/List;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 405
    return-void
.end method
