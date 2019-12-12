.class Lcom/stericson/RootTools/internal/RootToolsInternalMethods$7;
.super Lcom/stericson/RootTools/execution/CommandCapture;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;
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
    .line 819
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$7;->this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-object v5, v0

    move v6, v2

    move v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public output(ILjava/lang/String;)V
    .locals 10

    .prologue
    .line 822
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v6, v1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 823
    const-string v6, ""

    move-object v3, v6

    .line 825
    move-object v6, v2

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 826
    move-object v6, v4

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_0

    .line 849
    :goto_0
    return-void

    .line 830
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 833
    move-object v6, v2

    :try_start_0
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 834
    move-object v6, v5

    move-object v7, v5

    array-length v7, v7

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    aget-object v6, v6, v7

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 835
    const-string v6, "Symlink found."

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 836
    move-object v6, v5

    move-object v7, v5

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    .line 841
    :cond_1
    :goto_1
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$7;->this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getPermissions(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;

    move-result-object v6

    sput-object v6, Lcom/stericson/RootTools/internal/InternalVariables;->permissions:Lcom/stericson/RootTools/containers/Permissions;

    .line 842
    sget-object v6, Lcom/stericson/RootTools/internal/InternalVariables;->permissions:Lcom/stericson/RootTools/containers/Permissions;

    if-eqz v6, :cond_2

    .line 843
    sget-object v6, Lcom/stericson/RootTools/internal/InternalVariables;->permissions:Lcom/stericson/RootTools/containers/Permissions;

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/stericson/RootTools/containers/Permissions;->setSymlink(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 849
    :cond_2
    :goto_2
    goto :goto_0

    .line 838
    :catch_0
    move-exception v6

    move-object v5, v6

    goto :goto_1

    .line 845
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 846
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_2
.end method
