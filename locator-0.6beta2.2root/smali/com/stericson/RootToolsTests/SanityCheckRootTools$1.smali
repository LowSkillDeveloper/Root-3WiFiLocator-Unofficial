.class Lcom/stericson/RootToolsTests/SanityCheckRootTools$1;
.super Ljava/lang/Object;
.source "SanityCheckRootTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootToolsTests/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;


# direct methods
.method constructor <init>(Lcom/stericson/RootToolsTests/SanityCheckRootTools;)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/stericson/RootToolsTests/SanityCheckRootTools$1;->this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootToolsTests/SanityCheckRootTools$1;->this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;

    invoke-static {v1}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->access$100(Lcom/stericson/RootToolsTests/SanityCheckRootTools;)Landroid/widget/ScrollView;

    move-result-object v1

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .line 134
    return-void
.end method
