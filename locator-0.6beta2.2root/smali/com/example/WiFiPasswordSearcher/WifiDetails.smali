.class public Lcom/example/WiFiPasswordSearcher/WifiDetails;
.super Landroid/app/Activity;
.source "WifiDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/WifiDetails$100000001;,
        Lcom/example/WiFiPasswordSearcher/WifiDetails$100000002;,
        Lcom/example/WiFiPasswordSearcher/WifiDetails$100000003;,
        Lcom/example/WiFiPasswordSearcher/WifiDetails$100000004;,
        Lcom/example/WiFiPasswordSearcher/WifiDetails$100000005;,
        Lcom/example/WiFiPasswordSearcher/WifiDetails$100000006;,
        Lcom/example/WiFiPasswordSearcher/WifiDetails$100000007;
    }
.end annotation


# instance fields
.field private DetectorThread:Ljava/lang/Thread;

.field private LastBSSID:Ljava/lang/String;

.field private LastESSID:Ljava/lang/String;

.field private LastFreq:I

.field private LastSignal:I

.field private NetworkBSSID:Ljava/lang/String;

.field private ScanThread:Ljava/lang/Thread;

.field private ScanThreadActive:Z

.field private StartWifiInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private UseWifiDetector:Z

.field private WiFiInfo:Landroid/net/wifi/ScanResult;

.field private WifiMgr:Landroid/net/wifi/WifiManager;

.field private chkbUseDetector:Landroid/widget/CheckBox;

.field private graphSeries:Lcom/jjoe64/graphview/series/LineGraphSeries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jjoe64/graphview/series/LineGraphSeries",
            "<",
            "Lcom/jjoe64/graphview/series/DataPoint;",
            ">;"
        }
    .end annotation
.end field

.field private graphView:Lcom/jjoe64/graphview/GraphView;

.field private iGraphPointCount:I

.field private llGrphView:Landroid/widget/LinearLayout;

.field private mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

.field private mSoundPool:Landroid/media/SoundPool;

.field private txtBSSID:Landroid/widget/TextView;

.field private txtChannel:Landroid/widget/TextView;

.field private txtESSID:Landroid/widget/TextView;

.field private txtFreq:Landroid/widget/TextView;

.field private txtSignal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 324
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private DetectorWorker()V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->mSoundPool:Landroid/media/SoundPool;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f040001

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    move v2, v6

    .line 178
    const/4 v6, 0x0

    move v3, v6

    .line 180
    :goto_0
    move-object v6, v0

    iget-boolean v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->UseWifiDetector:Z

    if-nez v6, :cond_0

    return-void

    .line 182
    :cond_0
    move-object v6, v0

    iget v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->LastSignal:I

    const/4 v7, 0x0

    if-le v6, v7, :cond_1

    .line 183
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->mSoundPool:Landroid/media/SoundPool;

    move v7, v2

    const/4 v8, 0x1

    int-to-float v8, v8

    const/4 v9, 0x1

    int-to-float v9, v9

    const/16 v10, 0x64

    const/4 v11, 0x0

    const/4 v12, 0x1

    int-to-float v12, v12

    invoke-virtual/range {v6 .. v12}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v6

    .line 184
    :cond_1
    const/16 v6, 0x834

    const/16 v7, 0x14

    move-object v8, v0

    iget v8, v8, Lcom/example/WiFiPasswordSearcher/WifiDetails;->LastSignal:I

    mul-int/2addr v7, v8

    rsub-int v6, v7, 0x834

    move v3, v6

    .line 186
    move v6, v3

    int-to-long v6, v6

    const/4 v8, 0x0

    :try_start_0
    invoke-static {v6, v7, v8}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v4, v6

    .line 188
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private ScanWorker()V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    .line 195
    :goto_0
    move-object v8, v0

    iget-boolean v8, v8, Lcom/example/WiFiPasswordSearcher/WifiDetails;->ScanThreadActive:Z

    if-nez v8, :cond_0

    return-void

    .line 197
    :cond_0
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Boolean;

    move v11, v8

    move-object v12, v9

    move-object v8, v12

    move v9, v11

    move-object v10, v12

    move v11, v9

    move-object v12, v10

    move-object v9, v12

    move v10, v11

    invoke-direct {v9, v10}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v3, v8

    .line 200
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/WifiDetails;->WifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v8

    .line 201
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/WifiDetails;->WifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    move-object v2, v8

    .line 203
    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    .line 208
    :cond_1
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 211
    :goto_1
    move-object v8, v3

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_2

    move-object v8, v0

    const-string v9, "-100"

    invoke-direct {v8, v9}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->setSignal(Ljava/lang/String;)V

    .line 213
    :cond_2
    const-wide/16 v8, 0x3e8

    const/4 v10, 0x0

    :try_start_0
    invoke-static {v8, v9, v10}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :cond_3
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    move-object v6, v8

    .line 204
    move-object v8, v6

    iget-object v8, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object v9, v0

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/WifiDetails;->NetworkBSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 205
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lcom/example/WiFiPasswordSearcher/WifiDetails;->WiFiInfo:Landroid/net/wifi/ScanResult;

    .line 206
    move-object v8, v0

    invoke-direct {v8}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->Update()V

    .line 207
    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Boolean;

    move v11, v8

    move-object v12, v9

    move-object v8, v12

    move v9, v11

    move-object v10, v12

    move v11, v9

    move-object v12, v10

    move-object v9, v12

    move v10, v11

    invoke-direct {v9, v10}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v3, v8

    .line 208
    goto :goto_1

    .line 213
    :catch_0
    move-exception v8

    move-object v6, v8

    .line 215
    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private Update()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails;->WiFiInfo:Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->setBSSID(Ljava/lang/String;)V

    .line 170
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails;->WiFiInfo:Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->setESSID(Ljava/lang/String;)V

    .line 171
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails;->WiFiInfo:Landroid/net/wifi/ScanResult;

    iget v3, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->setFreq(Ljava/lang/String;)V

    .line 172
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails;->WiFiInfo:Landroid/net/wifi/ScanResult;

    iget v3, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->setSignal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000028(Lcom/example/WiFiPasswordSearcher/WifiDetails;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->DetectorWorker()V

    return-void
.end method

.method static synthetic access$1000029(Lcom/example/WiFiPasswordSearcher/WifiDetails;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->ScanWorker()V

    return-void
.end method

.method static synthetic access$L1000003(Lcom/example/WiFiPasswordSearcher/WifiDetails;)Ljava/lang/Thread;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails;->DetectorThread:Ljava/lang/Thread;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000007(Lcom/example/WiFiPasswordSearcher/WifiDetails;)Landroid/widget/TextView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails;->txtBSSID:Landroid/widget/TextView;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000008(Lcom/example/WiFiPasswordSearcher/WifiDetails;)Landroid/widget/TextView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails;->txtESSID:Landroid/widget/TextView;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000009(Lcom/example/WiFiPasswordSearcher/WifiDetails;)Landroid/widget/TextView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails;->txtFreq:Landroid/widget/TextView;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000010(Lcom/example/WiFiPasswordSearcher/WifiDetails;)Landroid/widget/TextView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails;->txtSignal:Landroid/widget/TextView;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000011(Lcom/example/WiFiPasswordSearcher/WifiDetails;)Landroid/widget/TextView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails;->txtChannel:Landroid/widget/TextView;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000015(Lcom/example/WiFiPasswordSearcher/WifiDetails;)Z
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails;->UseWifiDetector:Z

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000020(Lcom/example/WiFiPasswordSearcher/WifiDetails;)Lcom/example/WiFiPasswordSearcher/Settings;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000021(Lcom/example/WiFiPasswordSearcher/WifiDetails;)Lcom/jjoe64/graphview/series/LineGraphSeries;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails;->graphSeries:Lcom/jjoe64/graphview/series/LineGraphSeries;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000023(Lcom/example/WiFiPasswordSearcher/WifiDetails;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails;->iGraphPointCount:I

    move v0, v3

    return v0
.end method

.method static synthetic access$S1000003(Lcom/example/WiFiPasswordSearcher/WifiDetails;Ljava/lang/Thread;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails;->DetectorThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$S1000007(Lcom/example/WiFiPasswordSearcher/WifiDetails;Landroid/widget/TextView;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails;->txtBSSID:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$S1000008(Lcom/example/WiFiPasswordSearcher/WifiDetails;Landroid/widget/TextView;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails;->txtESSID:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$S1000009(Lcom/example/WiFiPasswordSearcher/WifiDetails;Landroid/widget/TextView;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails;->txtFreq:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$S1000010(Lcom/example/WiFiPasswordSearcher/WifiDetails;Landroid/widget/TextView;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails;->txtSignal:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$S1000011(Lcom/example/WiFiPasswordSearcher/WifiDetails;Landroid/widget/TextView;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails;->txtChannel:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$S1000015(Lcom/example/WiFiPasswordSearcher/WifiDetails;Z)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails;->UseWifiDetector:Z

    return-void
.end method

.method static synthetic access$S1000020(Lcom/example/WiFiPasswordSearcher/WifiDetails;Lcom/example/WiFiPasswordSearcher/Settings;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    return-void
.end method

.method static synthetic access$S1000021(Lcom/example/WiFiPasswordSearcher/WifiDetails;Lcom/jjoe64/graphview/series/LineGraphSeries;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails;->graphSeries:Lcom/jjoe64/graphview/series/LineGraphSeries;

    return-void
.end method

.method static synthetic access$S1000023(Lcom/example/WiFiPasswordSearcher/WifiDetails;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails;->iGraphPointCount:I

    return-void
.end method

.method private setBSSID(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 222
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->LastBSSID:Ljava/lang/String;

    if-ne v5, v6, :cond_0

    .line 232
    :goto_0
    return-void

    .line 224
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "BSSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 226
    move-object v5, v0

    new-instance v6, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000003;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000003;-><init>(Lcom/example/WiFiPasswordSearcher/WifiDetails;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 232
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/example/WiFiPasswordSearcher/WifiDetails;->LastBSSID:Ljava/lang/String;

    goto :goto_0
.end method

.method private setChannel(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 318
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    new-instance v4, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000007;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    invoke-direct {v5, v6, v7}, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000007;-><init>(Lcom/example/WiFiPasswordSearcher/WifiDetails;I)V

    invoke-virtual {v3, v4}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setESSID(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails;->LastESSID:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_0
    move-object v3, v0

    new-instance v4, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000004;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000004;-><init>(Lcom/example/WiFiPasswordSearcher/WifiDetails;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 245
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails;->LastESSID:Ljava/lang/String;

    goto :goto_0
.end method

.method private setFreq(Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    move-object/from16 v1, p1

    const-string v8, ""

    move-object v3, v8

    .line 251
    const/4 v8, 0x0

    move v4, v8

    .line 253
    move-object v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v5, v8

    .line 254
    move v8, v5

    move-object v9, v0

    iget v9, v9, Lcom/example/WiFiPasswordSearcher/WifiDetails;->LastFreq:I

    if-ne v8, v9, :cond_0

    .line 296
    :goto_0
    return-void

    .line 256
    :cond_0
    move v8, v5

    const/16 v9, 0x961

    if-lt v8, v9, :cond_1

    move v8, v5

    const/16 v9, 0x9b3

    if-gt v8, v9, :cond_1

    .line 258
    const-string v8, "2.4 GHz"

    move-object v3, v8

    .line 259
    move v8, v5

    const/16 v9, 0x96c

    add-int/lit16 v8, v8, -0x96c

    const/4 v9, 0x5

    div-int/lit8 v8, v8, 0x5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v4, v8

    .line 286
    :goto_1
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Freq: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " MHz "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "( "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 288
    move-object v8, v0

    new-instance v9, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000005;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move-object v12, v6

    invoke-direct {v10, v11, v12}, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000005;-><init>(Lcom/example/WiFiPasswordSearcher/WifiDetails;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 294
    move-object v8, v0

    move v9, v4

    invoke-direct {v8, v9}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->setChannel(I)V

    .line 296
    move-object v8, v0

    move v9, v5

    iput v9, v8, Lcom/example/WiFiPasswordSearcher/WifiDetails;->LastFreq:I

    goto/16 :goto_0

    .line 261
    :cond_1
    move v8, v5

    const/16 v9, 0x141e

    if-lt v8, v9, :cond_2

    move v8, v5

    const/16 v9, 0x1482

    if-gt v8, v9, :cond_2

    .line 263
    const-string v8, "UNII 1"

    move-object v3, v8

    .line 264
    const/16 v8, 0x1388

    move v9, v5

    add-int/2addr v8, v9

    const/4 v9, 0x5

    div-int/lit8 v8, v8, 0x5

    move v4, v8

    goto/16 :goto_1

    .line 266
    :cond_2
    move v8, v5

    const/16 v9, 0x1482

    if-lt v8, v9, :cond_3

    move v8, v5

    const/16 v9, 0x14e6

    if-gt v8, v9, :cond_3

    .line 268
    const-string v8, "UNII 2"

    move-object v3, v8

    .line 269
    const/16 v8, 0x1388

    move v9, v5

    add-int/2addr v8, v9

    const/4 v9, 0x5

    div-int/lit8 v8, v8, 0x5

    move v4, v8

    goto/16 :goto_1

    .line 271
    :cond_3
    move v8, v5

    const/16 v9, 0x155e

    if-lt v8, v9, :cond_4

    move v8, v5

    const/16 v9, 0x165d

    if-gt v8, v9, :cond_4

    .line 273
    const-string v8, "UNII 2 Extended"

    move-object v3, v8

    .line 274
    move v8, v5

    const/4 v9, 0x5

    div-int/lit8 v8, v8, 0x5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v4, v8

    goto/16 :goto_1

    .line 276
    :cond_4
    move v8, v5

    const/16 v9, 0x165d

    if-lt v8, v9, :cond_5

    move v8, v5

    const/16 v9, 0x16c1

    if-gt v8, v9, :cond_5

    .line 278
    const-string v8, "UNII 3"

    move-object v3, v8

    .line 279
    const/16 v8, 0x1388

    move v9, v5

    add-int/2addr v8, v9

    const/4 v9, 0x5

    div-int/lit8 v8, v8, 0x5

    move v4, v8

    goto/16 :goto_1

    .line 283
    :cond_5
    const-string v8, ""

    move-object v3, v8

    goto/16 :goto_1
.end method

.method private setSignal(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v3, v6

    .line 302
    const/16 v6, 0x64

    move v7, v3

    add-int/2addr v6, v7

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    move v3, v6

    .line 303
    move v6, v3

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v7, 0x64

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v3, v6

    .line 304
    move v6, v3

    move v4, v6

    .line 305
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->LastSignal:I

    .line 307
    move-object v6, v0

    new-instance v7, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000006;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move v10, v4

    invoke-direct {v8, v9, v10}, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000006;-><init>(Lcom/example/WiFiPasswordSearcher/WifiDetails;I)V

    invoke-virtual {v6, v7}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 140
    move-object v7, v0

    const v8, 0x7f070025

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    move-object v3, v7

    .line 141
    move-object v7, v0

    const v8, 0x7f070038

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    move-object v4, v7

    .line 143
    move-object v7, v1

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 145
    move-object v7, v3

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 146
    move-object v7, v4

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v5, v7

    .line 147
    move-object v7, v5

    const/4 v8, -0x1

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 148
    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    move-object v7, v1

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 152
    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 153
    move-object v7, v4

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v5, v7

    .line 154
    move-object v7, v5

    const/4 v8, -0x2

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 155
    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    const-string v7, "com.aide.ui"

    invoke-static {v6, v7}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    move-object v6, v0

    const v7, 0x7f03000a

    invoke-virtual {v6, v7}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->setContentView(I)V

    .line 60
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->UseWifiDetector:Z

    .line 65
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "WifiInfo"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->StartWifiInfo:Ljava/util/HashMap;

    .line 66
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/WifiDetails;->StartWifiInfo:Ljava/util/HashMap;

    const-string v8, "BSSID"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->NetworkBSSID:Ljava/lang/String;

    .line 68
    move-object v6, v0

    move-object v7, v0

    const v8, 0x7f07003a

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->txtBSSID:Landroid/widget/TextView;

    .line 69
    move-object v6, v0

    move-object v7, v0

    const v8, 0x7f070039

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->txtESSID:Landroid/widget/TextView;

    .line 70
    move-object v6, v0

    move-object v7, v0

    const v8, 0x7f07003c

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->txtFreq:Landroid/widget/TextView;

    .line 71
    move-object v6, v0

    move-object v7, v0

    const v8, 0x7f07003b

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->txtSignal:Landroid/widget/TextView;

    .line 72
    move-object v6, v0

    move-object v7, v0

    const v8, 0x7f07003d

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->txtChannel:Landroid/widget/TextView;

    .line 73
    move-object v6, v0

    move-object v7, v0

    const v8, 0x7f07003e

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->chkbUseDetector:Landroid/widget/CheckBox;

    .line 74
    move-object v6, v0

    move-object v7, v0

    const v8, 0x7f07003f

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->llGrphView:Landroid/widget/LinearLayout;

    .line 76
    move-object v6, v0

    new-instance v7, Landroid/media/SoundPool;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->mSoundPool:Landroid/media/SoundPool;

    .line 79
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->iGraphPointCount:I

    .line 80
    move-object v6, v0

    new-instance v7, Lcom/jjoe64/graphview/series/LineGraphSeries;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/jjoe64/graphview/series/LineGraphSeries;-><init>()V

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->graphSeries:Lcom/jjoe64/graphview/series/LineGraphSeries;

    .line 81
    move-object v6, v0

    new-instance v7, Lcom/jjoe64/graphview/GraphView;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/jjoe64/graphview/GraphView;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->graphView:Lcom/jjoe64/graphview/GraphView;

    .line 82
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->graphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/jjoe64/graphview/GridLabelRenderer;->setNumVerticalLabels(I)V

    .line 83
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->graphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/jjoe64/graphview/GridLabelRenderer;->setHorizontalLabelsVisible(Z)V

    .line 84
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->graphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v6

    const/4 v7, 0x0

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/jjoe64/graphview/Viewport;->setMinY(D)V

    .line 85
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->graphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v6

    const/16 v7, 0x64

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/jjoe64/graphview/Viewport;->setMaxY(D)V

    .line 86
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->graphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v6

    sget-object v7, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->FIX:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    invoke-virtual {v6, v7}, Lcom/jjoe64/graphview/Viewport;->setYAxisBoundsStatus(Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;)V

    .line 87
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->graphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/jjoe64/graphview/Viewport;->setYAxisBoundsManual(Z)V

    .line 89
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->graphView:Lcom/jjoe64/graphview/GraphView;

    const-string v7, "Signal graph"

    invoke-virtual {v6, v7}, Lcom/jjoe64/graphview/GraphView;->setTitle(Ljava/lang/String;)V

    .line 90
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->graphView:Lcom/jjoe64/graphview/GraphView;

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/WifiDetails;->graphSeries:Lcom/jjoe64/graphview/series/LineGraphSeries;

    invoke-virtual {v6, v7}, Lcom/jjoe64/graphview/GraphView;->addSeries(Lcom/jjoe64/graphview/series/Series;)V

    .line 91
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->llGrphView:Landroid/widget/LinearLayout;

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/WifiDetails;->graphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->chkbUseDetector:Landroid/widget/CheckBox;

    new-instance v7, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000001;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000001;-><init>(Lcom/example/WiFiPasswordSearcher/WifiDetails;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    move-object v6, v0

    new-instance v7, Lcom/example/WiFiPasswordSearcher/Settings;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-virtual {v9}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/example/WiFiPasswordSearcher/Settings;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    .line 114
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    invoke-virtual {v6}, Lcom/example/WiFiPasswordSearcher/Settings;->Reload()V

    .line 116
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v7, "WIFI_SIGNAL"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    new-instance v7, Ljava/lang/Boolean;

    move v12, v6

    move-object v13, v7

    move-object v6, v13

    move v7, v12

    move-object v8, v13

    move v12, v7

    move-object v13, v8

    move-object v7, v13

    move v8, v12

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, v6

    .line 117
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->chkbUseDetector:Landroid/widget/CheckBox;

    move-object v7, v4

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 119
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/WifiDetails;->StartWifiInfo:Ljava/util/HashMap;

    const-string v8, "BSSID"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->setBSSID(Ljava/lang/String;)V

    .line 120
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/WifiDetails;->StartWifiInfo:Ljava/util/HashMap;

    const-string v8, "SSID"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->setESSID(Ljava/lang/String;)V

    .line 121
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/WifiDetails;->StartWifiInfo:Ljava/util/HashMap;

    const-string v8, "Freq"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->setFreq(Ljava/lang/String;)V

    .line 122
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/WifiDetails;->StartWifiInfo:Ljava/util/HashMap;

    const-string v8, "Signal"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->setSignal(Ljava/lang/String;)V

    .line 124
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->WifiMgr:Landroid/net/wifi/WifiManager;

    .line 126
    move-object v6, v0

    new-instance v7, Ljava/lang/Thread;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000002;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v0

    invoke-direct {v10, v11}, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000002;-><init>(Lcom/example/WiFiPasswordSearcher/WifiDetails;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->ScanThread:Ljava/lang/Thread;

    .line 132
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->ScanThreadActive:Z

    .line 133
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails;->ScanThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/app/Activity;->onDestroy()V

    .line 162
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/example/WiFiPasswordSearcher/WifiDetails;->UseWifiDetector:Z

    .line 163
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/example/WiFiPasswordSearcher/WifiDetails;->ScanThreadActive:Z

    .line 164
    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/WifiDetails;->graphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->removeAllSeries()V

    .line 165
    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Lcom/jjoe64/graphview/series/LineGraphSeries;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/WifiDetails;->graphSeries:Lcom/jjoe64/graphview/series/LineGraphSeries;

    return-void
.end method
