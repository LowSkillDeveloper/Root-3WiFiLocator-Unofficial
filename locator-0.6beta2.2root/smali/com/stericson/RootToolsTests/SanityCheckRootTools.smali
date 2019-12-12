.class public Lcom/stericson/RootToolsTests/SanityCheckRootTools;
.super Landroid/app/Activity;
.source "SanityCheckRootTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/RootToolsTests/SanityCheckRootTools$TestHandler;,
        Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;
    }
.end annotation


# instance fields
.field private mPDialog:Landroid/app/ProgressDialog;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Activity;-><init>()V

    .line 363
    return-void
.end method

.method static synthetic access$100(Lcom/stericson/RootToolsTests/SanityCheckRootTools;)Landroid/widget/ScrollView;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Lcom/stericson/RootToolsTests/SanityCheckRootTools;)Landroid/app/ProgressDialog;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 64
    new-instance v4, Landroid/os/StrictMode$VmPolicy$Builder;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 71
    const/4 v4, 0x1

    sput-boolean v4, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    .line 73
    move-object v4, v0

    new-instance v5, Landroid/widget/TextView;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mTextView:Landroid/widget/TextView;

    .line 74
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mTextView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    move-object v4, v0

    new-instance v5, Landroid/widget/ScrollView;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    .line 76
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 77
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v5}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->setContentView(Landroid/view/View;)V

    .line 80
    const-string v4, "?"

    move-object v2, v4

    .line 82
    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v3, v4

    .line 84
    move-object v4, v3

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 88
    :goto_0
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SanityCheckRootTools v "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    move-object v4, v0

    const-string v5, "Root found.\n"

    invoke-virtual {v4, v5}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    .line 99
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/stericson/RootTools/exceptions/RootDeniedException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    .line 112
    :goto_2
    const/4 v4, 0x0

    :try_start_2
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v5

    if-ne v4, v5, :cond_1

    .line 113
    move-object v4, v0

    const-string v5, "ERROR: No root access to this device.\n"

    invoke-virtual {v4, v5}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 127
    :goto_3
    return-void

    .line 85
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0

    .line 95
    :cond_0
    move-object v4, v0

    const-string v5, "Root not found"

    invoke-virtual {v4, v5}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 100
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 102
    move-object v4, v3

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 109
    goto :goto_2

    .line 103
    :catch_2
    move-exception v4

    move-object v3, v4

    .line 104
    move-object v4, v0

    const-string v5, "[ TIMEOUT EXCEPTION! ]\n"

    invoke-virtual {v4, v5}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    .line 105
    move-object v4, v3

    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 109
    goto :goto_2

    .line 106
    :catch_3
    move-exception v4

    move-object v3, v4

    .line 107
    move-object v4, v0

    const-string v5, "[ ROOT DENIED EXCEPTION! ]\n"

    invoke-virtual {v4, v5}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    .line 108
    move-object v4, v3

    invoke-virtual {v4}, Lcom/stericson/RootTools/exceptions/RootDeniedException;->printStackTrace()V

    goto :goto_2

    .line 122
    :cond_1
    move-object v4, v0

    new-instance v5, Landroid/app/ProgressDialog;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;

    .line 123
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 124
    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 126
    new-instance v4, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    move-object v7, v0

    new-instance v8, Lcom/stericson/RootToolsTests/SanityCheckRootTools$TestHandler;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$TestHandler;-><init>(Lcom/stericson/RootToolsTests/SanityCheckRootTools;Lcom/stericson/RootToolsTests/SanityCheckRootTools$1;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;-><init>(Lcom/stericson/RootToolsTests/SanityCheckRootTools;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->start()V

    .line 127
    goto :goto_3

    .line 116
    :catch_4
    move-exception v4

    move-object v3, v4

    .line 117
    move-object v4, v0

    const-string v5, "ERROR: could not determine root access to this device.\n"

    invoke-virtual {v4, v5}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    .line 118
    goto :goto_3
.end method

.method protected print(Ljava/lang/CharSequence;)V
    .locals 7

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mTextView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 131
    move-object v2, v0

    iget-object v2, v2, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    new-instance v3, Lcom/stericson/RootToolsTests/SanityCheckRootTools$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$1;-><init>(Lcom/stericson/RootToolsTests/SanityCheckRootTools;)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 136
    return-void
.end method
