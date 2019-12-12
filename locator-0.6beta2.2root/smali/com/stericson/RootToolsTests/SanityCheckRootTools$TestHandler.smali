.class Lcom/stericson/RootToolsTests/SanityCheckRootTools$TestHandler;
.super Landroid/os/Handler;
.source "SanityCheckRootTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootToolsTests/SanityCheckRootTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestHandler"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ACTION_DISPLAY:I = 0x3

.field public static final ACTION_HIDE:I = 0x2

.field public static final ACTION_PDISPLAY:I = 0x4

.field public static final ACTION_SHOW:I = 0x1

.field public static final TEXT:Ljava/lang/String; = "text"


# instance fields
.field final synthetic this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;


# direct methods
.method private constructor <init>(Lcom/stericson/RootToolsTests/SanityCheckRootTools;)V
    .locals 4

    .prologue
    .line 363
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/stericson/RootToolsTests/SanityCheckRootTools$TestHandler;->this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stericson/RootToolsTests/SanityCheckRootTools;Lcom/stericson/RootToolsTests/SanityCheckRootTools$1;)V
    .locals 5

    .prologue
    .line 363
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$TestHandler;-><init>(Lcom/stericson/RootToolsTests/SanityCheckRootTools;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 372
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "action"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 373
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 375
    move v4, v2

    packed-switch v4, :pswitch_data_0

    .line 392
    :goto_0
    return-void

    .line 377
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootToolsTests/SanityCheckRootTools$TestHandler;->this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;

    invoke-static {v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->access$300(Lcom/stericson/RootToolsTests/SanityCheckRootTools;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 378
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootToolsTests/SanityCheckRootTools$TestHandler;->this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;

    invoke-static {v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->access$300(Lcom/stericson/RootToolsTests/SanityCheckRootTools;)Landroid/app/ProgressDialog;

    move-result-object v4

    const-string v5, "Running Root Library Tests..."

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 379
    goto :goto_0

    .line 381
    :pswitch_1
    const/4 v4, 0x0

    move-object v5, v3

    if-eq v4, v5, :cond_0

    .line 382
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootToolsTests/SanityCheckRootTools$TestHandler;->this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    .line 383
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootToolsTests/SanityCheckRootTools$TestHandler;->this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;

    invoke-static {v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->access$300(Lcom/stericson/RootToolsTests/SanityCheckRootTools;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->hide()V

    .line 384
    goto :goto_0

    .line 386
    :pswitch_2
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootToolsTests/SanityCheckRootTools$TestHandler;->this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    .line 387
    goto :goto_0

    .line 389
    :pswitch_3
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootToolsTests/SanityCheckRootTools$TestHandler;->this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;

    invoke-static {v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->access$300(Lcom/stericson/RootToolsTests/SanityCheckRootTools;)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
