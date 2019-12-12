.class Lcom/stericson/RootTools/internal/RootToolsInternalMethods$6;
.super Lcom/stericson/RootTools/execution/CommandCapture;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->isAccessGiven()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;


# direct methods
.method varargs constructor <init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 744
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$6;->this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-object v5, v0

    move v6, v2

    move v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public output(ILjava/lang/String;)V
    .locals 11

    .prologue
    .line 747
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v6, v1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 748
    new-instance v6, Ljava/util/HashSet;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v3, v6

    .line 749
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 750
    move-object v6, v5

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 752
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "uid=0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 753
    const/4 v6, 0x1

    sput-boolean v6, Lcom/stericson/RootTools/internal/InternalVariables;->accessGiven:Z

    .line 754
    const-string v6, "Access Given"

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 758
    :cond_0
    sget-boolean v6, Lcom/stericson/RootTools/internal/InternalVariables;->accessGiven:Z

    if-nez v6, :cond_1

    .line 759
    const-string v6, "Access Denied?"

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 762
    :cond_1
    return-void

    .line 755
    :cond_2
    goto :goto_0
.end method
